import 'package:flutter/material.dart';
import 'package:sweet/screens/signUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Halaak BG.png'),
            fit: BoxFit.fill,
          ),
        ),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Image.asset(
            'assets/logo_screen.png',
            height: 170,
          ),
          SizedBox(
            height: 50,
          ),
          myTextFormField(email, 'الاسم'),
          SizedBox(
            height: 15,
          ),
          myTextFormField(password, 'كلمة السر'),
          SizedBox(
            height: 20,
          ),
          InkWell(
             onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
            SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Text(
                  'نسيت كلمه السر',
                  style: TextStyle(
                    color: Color(0xff5E5E5E),
                    fontSize: 16,
                  ),
                ),
              ),
              InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                 },
                child: Text(
                  'تسجيل',
                  style: TextStyle(
                    color: Color(0xff5E5E5E),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

  Widget myTextFormField(
    final TextEditingController controller,
    final String text,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 5),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ]),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: text,
            hintStyle: TextStyle(
              color: Color(0xffA9A9A9),
              fontSize: 16,
            )),
      ),
    );
  }
}
