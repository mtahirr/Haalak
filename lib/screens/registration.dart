import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/Group 136.png',
                    height: 80,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Image.asset(
                'assets/logo_screen.png',
                height: 170,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: myContainer('assets/apple_ic.png', "APPLE")),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                        onTap: () {},
                        child: myContainer('assets/gmail.png', "GMAIL")),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                        onTap: () {},
                        child: myContainer('assets/phone.png', "NUMBER")),
                    SizedBox(
                      height: 10,
                    ),
                      Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'لدي حساب بالفعل',
                      style: TextStyle(color: Color(0xff5E5E5E), fontSize: 16),
                    ),
                  ),
                ],
              )
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer(
    String image,
    String text,
  ) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18, color: Color(0xffACACAC)),
            )
          ],
        ));
  }
}
