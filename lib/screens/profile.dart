import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff67293A),
      body: Container(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 50, bottom: 40, right: 20, left: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Mask Group 9.png'),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context);
                        },
                        child: Icon(
                          Icons.keyboard_arrow_left_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset('assets/Group 70064.png')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 55,
                    child: CircleAvatar(
                      radius: 53,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'عبدالرحمن',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xffE8E8E8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'الطلباتي',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color(0xffF96F90),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Text(
                                ' 4',
                                style: TextStyle(
                                    color: Color(0xffF96F90), fontSize: 16),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'جميع الطلبات',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/boxes-alt.png')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xffE8E8E8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Icon(Icons.keyboard_arrow_left_outlined,size: 30,color: Color(0xffFFC83D),),
                          Row(
                            children: [
                              Text(
                                'مساعد',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/question-circle.png')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xffE8E8E8))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Icon(Icons.keyboard_arrow_left_outlined,size: 30,color: Color(0xffFFC83D),),
                          Row(
                            children: [
                              Text(
                                'إعدادات',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/cog.png')
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffE2EBF1),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Color(0xff28A9EB))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        
                          Row(
                            children: [
                              Text(
                                'تواصل معنا على  تيلي غرام',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/t_logo.png')
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
