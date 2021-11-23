import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sweet/screens/otp.dart';

class PhoneNo extends StatefulWidget {
  @override
  _PhoneNoState createState() => _PhoneNoState();
}

class _PhoneNoState extends State<PhoneNo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
           decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Halaak BG.png'),
            fit: BoxFit.fill,
          ),
        ),
            child: SingleChildScrollView(
              child: Column(
                      children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/Group 136.png',
                    height: 75,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Column(
                 
                  children: [
                    Image.asset(
                      'assets/logo_screen.png',
                      height: 170,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'التسجيل الدخول',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(1, 5),
                              spreadRadius: 5,
                              blurRadius: 10,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                              title: _buildCountryPickerDropdown(
                                  sortedByIsoCode: true)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OTP()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 25),
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
                            border:
                                Border.all(color: Color(0xff69293A), width: 0)),
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
                  ],
                ),
              )
                      ],
                    ),
            )),
      ),
    );
  }

  _buildCountryPickerDropdown(
      {bool sortedByIsoCode = false, bool hasSelectedItemBuilder = false}) {
    double dropdownButtonWidth = MediaQuery.of(context).size.width * 0.38;
    //respect dropdown button icon size
    double dropdownItemWidth = dropdownButtonWidth - 30;
    double dropdownSelectedItemWidth = dropdownButtonWidth - 30;
    return Row(
      children: <Widget>[
        SizedBox(
          width: dropdownButtonWidth,
          child: CountryPickerDropdown(
            /* underline: Container(
              height: 2,
              color: Colors.red,
            ),*/
            //show'em (the text fields) you're in charge now
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            //if you have menu items of varying size, itemHeight being null respects
            //that, IntrinsicHeight under the hood ;).
            itemHeight: null,
            //itemHeight being null and isDense being true doesn't play along
            //well together. One is trying to limit size and other is saying
            //limit is the sky, therefore conflicts.
            //false is default but still keep that in mind.
            isDense: false,
            //if you want your dropdown button's selected item UI to be different
            //than itemBuilder's(dropdown menu item UI), then provide this selectedItemBuilder.
            selectedItemBuilder: hasSelectedItemBuilder == true
                ? (Country country) => _buildDropdownSelectedItemBuilder(
                    country, dropdownSelectedItemWidth)
                : null,
            //initialValue: 'AR',
            itemBuilder: (Country country) => hasSelectedItemBuilder == true
                ? _buildDropdownItemWithLongText(country, dropdownItemWidth)
                : _buildDropdownItem(country, dropdownItemWidth),
            initialValue: 'PK',

            //priorityList is shown at the beginning of list

            sortComparator: sortedByIsoCode
                ? (Country a, Country b) => a.isoCode.compareTo(b.isoCode)
                : null,
            onValuePicked: (Country country) {
              print("${country.name}");
            },
          ),
        ),
        // SizedBox(
        //   width: 8.0,
        // ),

        Expanded(
          child: TextField(
            decoration: InputDecoration(
                hintText: '5XX XXXX XXX',
                hintStyle: TextStyle(
                  color: Colors.black38,
                ),
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none),
            keyboardType: TextInputType.number,
          ),
        )
      ],
    );
  }

  Widget _buildDropdownItem(Country country, double dropdownItemWidth) =>
      SizedBox(
        width: dropdownItemWidth,
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Expanded(child: Text("+${country.phoneCode}(${country.isoCode})")),
          ],
        ),
      );

  Widget _buildDropdownItemWithLongText(
          Country country, double dropdownItemWidth) =>
      SizedBox(
        width: dropdownItemWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(
                width: 8.0,
              ),
              Expanded(child: Text("${country.name}")),
            ],
          ),
        ),
      );

  Widget _buildDropdownSelectedItemBuilder(
          Country country, double dropdownItemWidth) =>
      SizedBox(
          width: dropdownItemWidth,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  CountryPickerUtils.getDefaultFlagImage(country),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                      child: Text(
                    '${country.name}',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
                ],
              )));
}
