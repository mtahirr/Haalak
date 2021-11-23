import 'package:flutter/material.dart';
import 'package:sweet/screens/driverSignUp.dart';

class StoreSignUp extends StatefulWidget {
  @override
  _StoreSignUpState createState() => _StoreSignUpState();
}

class _StoreSignUpState extends State<StoreSignUp> {
   Object _itemValue;
  var listItem = ['item1', 'item2'];
  Object currentItemSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              // clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                 child: Image(  image: AssetImage('assets/header_img.png'),fit: BoxFit.cover,),
                ),
                Positioned(
                  top: 160,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('فئة المتجر',style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),),
                          ],
                        ),
                        SizedBox(height: 15,),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF96F90),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 10),
                                child: Center(
                                  child: Text(
                                    'قهوة وحلى',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                   border: Border.all(color: Color(0xffE8E8E8)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                child: Center(
                                  child: Text(
                                    'قهوة',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffE8E8E8)),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 10),
                                child: Center(
                                  child: Text(
                                    'حلى',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                              )
                            ],
                          ),
                           SizedBox(
                                  height: 20,
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
                        suffixIcon: Image.asset('assets/store-name.png'),
                        hintText: 'الاسم على البطاقة',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xff707070)),
                        border: InputBorder.none,
                      )),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                        padding: EdgeInsets.only(left: 15, right: 30),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE8E8E8)),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Row(
                          children: [
                           
                            Expanded(
                              child: Directionality(
                                textDirection:TextDirection.rtl,
                                child: DropdownButton(
                                  
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  hint: Text(
                                    'سنة انتهاء الصلاحية',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff707070)),
                                  ),
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xff333333),
                                  ),
                                  value: _itemValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _itemValue = value;
                                    });
                                  },
                                  items: listItem.map((value) {
                                    return DropdownMenuItem(
                                        value: value, child: Text(value));
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(width: 23,),
                             Image.asset('assets/map-marker-alt.png'),
                          ],
                        ),
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
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xff707070)),
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
                                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                                  child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        suffixIcon: Image.asset('assets/lock-alt.png'),
                        contentPadding: EdgeInsets.only(top: 15),
                        hintText: 'كلمه السر',
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xff707070)),
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
                        suffixIcon: Image.asset('assets/certificate.png'),
                        hintText: 'الشهادة التجارية (اختياري)',
                        hintStyle:
                            TextStyle(fontSize: 14, color: Color(0xff707070)),
                        border: InputBorder.none,
                      ),),
                                ),
                                SizedBox(height: 20,),
                                 InkWell(
                                    onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DriverSignUp()));
                                  },
                                   child: Container(
                                                                 decoration: BoxDecoration(
                                    color: Color(0xffF96F90),
                                    borderRadius: BorderRadius.circular(30),
                                                                 ),
                                                                 padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10),
                                                                 child: Center(
                                    child: Text(
                                      'إنشاء متجر',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                                                 ),
                                                               ),
                                 ),
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
                        child:
                            Image(image: AssetImage('assets/Group 70066.png')),
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
