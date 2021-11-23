import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sweet/screens/bottomnavigation.dart';
import 'package:sweet/screens/button.dart';
import 'package:sweet/screens/home.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final _formKey = GlobalKey<FormState>();
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  final _pageController = PageController();

  int _pageIndex = 0;

  final List<Widget> _pinPuts = [];

  final List<Color> _bgColors = [
    // const Color.fromRGBO(43, 36, 198, 1),
    // Colors.white,
    // const Color.fromRGBO(75, 83, 214, 1),
    // const Color.fromRGBO(43, 46, 66, 1),
  ];

  @override
  void initState() {
    _pinPuts.addAll([
      onlySelectedBorderPinPut(),
      // darkRoundedPinPut(),
      // animatingBorders(),
      // boxedPinPutWithPreFilledSymbol(),
      // justRoundedCornersPinPut(),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(30, 90, 30, 40),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Halaak BG.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          AnimatedContainer(
            // color: _bgColors[_pageIndex],
            duration: const Duration(milliseconds: 200),
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _pageIndex = index);
              },
              children: _pinPuts.map((p) {
                return FractionallySizedBox(
                  child: Center(child: p),
                );
              }).toList(),
            ),
          ),
          // _bottomAppBar,
        ],
      ),
    ));
  }

  Widget onlySelectedBorderPinPut() {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
    );
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/logo_screen.png',
            height: 120,
          ),
          Text(
            'آدخل الرمز المون من 4 آرقام الذی آرسلناہآیک',
            style: TextStyle(
              fontSize: 18,
              color: Color(0xffC1C1C1),
            ),
          ),
          Text(
            'التسجيل الدخول',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onLongPress: () {
              print(_formKey.currentState.validate());
            },
            child: PinPut(
              validator: (s) {
                if (s.contains('1')) return null;
                return 'NOT VALID';
              },
              useNativeKeyboard: false,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              withCursor: true,
              fieldsCount: 6,
              fieldsAlignment: MainAxisAlignment.spaceAround,
              textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
              eachFieldMargin: EdgeInsets.all(0),
              eachFieldWidth: 45.0,
              eachFieldHeight: 45.0,
              onSubmit: (String pin) => _showSnackBar(pin),
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration.copyWith(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(1, 5),
                    spreadRadius: 5,
                    blurRadius: 10,
                  ),
                ],
                border: Border.all(
                  width: 2,
                  color: const Color.fromRGBO(160, 215, 220, 1),
                ),
              ),
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.scale,
            ),
          ),
          Text(
            'اعادۃ الدرسال',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AnimatedBar()));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 5),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                  color: Color(0xffFFBB28),
                  border: Border.all(color: Color(0xff69293A), width: 0)),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  'تاكيد',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40, left: 40,),
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical:10),
              crossAxisCount: 3,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics(),
              children: [
                // ignore: sdk_version_ui_as_code
                ...[1, 2, 3, 4, 5, 6, 7, 8, 9, 0].map((e) {
                  return RoundedButton(
                    title: '$e',
                    onTap: () {
                      if (_pinPutController.text.length >= 5) return;

                      _pinPutController.text = '${_pinPutController.text}$e';
                    },
                  );
                }),
                RoundedButton(
                  title: '⌫',
                  onTap: () {
                    if (_pinPutController.text.isNotEmpty) {
                      _pinPutController.text = _pinPutController.text
                          .substring(0, _pinPutController.text.length - 1);
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(String pin) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
