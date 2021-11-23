import 'package:flutter/material.dart';
import 'package:sweet/screens/addNewProduct.dart';

class DriverSignUp extends StatefulWidget {
  @override
  _DriverSignUpState createState() => _DriverSignUpState();
}

class _DriverSignUpState extends State<DriverSignUp> {
  Object _itemValue;
  var listItem = ['item1', 'item2'];
  Object currentItemSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height*1.7,
        child: Stack(
          // clipBehavior: Clip.none,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/header_img.png'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 160,
             
              child: Container(
                
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            suffixIcon: Image.asset('assets/user-alt.png'),
                            hintText: 'الاسم على البطاقة',
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xff707070)),
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            suffixIcon: Image.asset('assets/envelope.png'),
                            hintText: 'بريد الالكتروني',
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xff707070)),
                            border: InputBorder.none,
                          )),
                    ),
                     SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, ),
                      child: TextField(
                        
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.only(top: 20),
                            suffixIcon: Image.asset('assets/map-marker-alt.png'),
                            hintText: 'بريد الالكتروني',
                            hintStyle: TextStyle(
                                fontSize: 15, color: Color(0xff707070)),
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            suffixIcon: Image.asset('assets/car-alt.png'),
                            contentPadding: EdgeInsets.only(top: 15),
                            hintText: 'نوع السيارة',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Color(0xff707070)),
                            border: InputBorder.none,
                          )),
                    ),
                      SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            suffixIcon: Image.asset('assets/car-alt.png'),
                            contentPadding: EdgeInsets.only(top: 15),
                            hintText: 'طراز السيارة',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Color(0xff707070)),
                            border: InputBorder.none,
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: TextField(
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            suffixIcon: Image.asset('assets/Group 70068.png'),
                            hintText: 'رقم السياره',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Color(0xff707070)),
                            border: InputBorder.none,
                          )),
                    ),
                     SizedBox(height: 15,),
                     Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('رخصة السيارة',style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                         SizedBox(height: 15,),
                         Container(
                           width: MediaQuery.of(context).size.width,
                           padding: EdgeInsets.symmetric(vertical: 40),
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Color(0xffE8E8E8)),
                           ),
                           child:Center(child: Image.asset('assets/image.png'))
                         ),
                          SizedBox(height: 15,),
                     Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('صورة السيارة الأمامية',style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                         SizedBox(height: 15,),
                         Container(
                           width: MediaQuery.of(context).size.width,
                           padding: EdgeInsets.symmetric(vertical: 40),
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Color(0xffE8E8E8)),
                           ),
                           child:Center(child: Image.asset('assets/image.png'))
                         ),
                          SizedBox(height: 15,),
                     Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('صورة السيارة الخلفية',style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                         SizedBox(height: 15,),
                         Container(
                           width: MediaQuery.of(context).size.width,
                           padding: EdgeInsets.symmetric(vertical: 40),
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Color(0xffE8E8E8)),
                           ),
                           child:Center(child: Image.asset('assets/image.png'))
                         ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddNewProduct()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF96F90),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Center(
                          child: Text(
                            'إنشاء متجر',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                   
                    SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 105,
              left: 0,
              right: 0,
              child: Center(
                child: CircleAvatar(
                  radius: 58,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfff1f1f1),
                    radius: 55,
                    child: Image(image: AssetImage('assets/Group 70066.png')),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 230,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF96F90)),
                child: Icon(
                  Icons.camera_alt_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 50,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 95),
                      child: Text(
                        'إنشاء متجر',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
