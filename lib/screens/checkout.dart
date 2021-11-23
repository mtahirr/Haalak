import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sweet/screens/storeSignup.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  Object _itemValue;
  var listItem = ['item1', 'item2'];
  Object currentItemSelected;
  Object _itemValue1;
  var listItem1 = ['item1', 'item2'];
  Object currentItemSelected1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color(0xffF96F90),
          ),
          child: Text(
            'ضع طلبية',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white, fontSize: 18),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.keyboard_arrow_left_outlined,
              color: Colors.black,
              size: 30,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  children: [
                    Text(
                      'باسكن روبنز',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تفاصيل الطلب',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffFFF0F4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffE8E8E8)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'قهوة لاتيه',
                                textAlign: TextAlign.end,
                                style: TextStyle(fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '4 ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      Text(
                                        'العدد',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color(0xff333333),
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'ريال',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Color(0xffF96F90),
                                            fontSize: 16),
                                      ),
                                      Text(
                                        ' 4',
                                        style: TextStyle(
                                            color: Color(0xffF96F90),
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffFFC83D),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xffE8E8E8)),
                          ),
                          child: Image.asset('assets/donut.png'),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('تسليم العنوان',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffE8E8E8)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left_outlined,
                        size: 25,
                        color: Color(0xffFFC83D),
                      ),
                      Row(
                        children: [
                          Text(
                            'اختر مكان التوصيل',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color(
                                  0xff707070,
                                ),
                                fontSize: 16),
                          ),
                          Image.asset(
                            'assets/map-marker-alt.png',
                            height: 30,
                            color: Color(0xffF96F90),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('طريقة الدفع او السداد',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF96F90),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Center(
                        child: Text(
                          'بطاقة ائتمان',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // color: Color(0xffF96F90),
                        border: Border.all(color: Color(0xffE8E8E8)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: Center(
                        child: Text(
                          'السيولة النقدية',
                          style:
                              TextStyle(color: Color(0xff333333), fontSize: 16),
                        ),
                      ),
                    ),
                  ],
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        prefixIcon: Image.asset('assets/msater_card_ic.png'),
                        hintText: 'رقم البطاقة',
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'الاسم على البطاقة',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xff707070)),
                        border: InputBorder.none,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE8E8E8)),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          hint: Text(
                            'سنة انتهاء الصلاحية',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070)),
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Color(0xff333333),
                          ),
                          value: _itemValue1,
                          onChanged: (value) {
                            setState(() {
                              _itemValue1 = value;
                            });
                          },
                          items: listItem1.map((value) {
                            return DropdownMenuItem(
                                value: value, child: Text(value));
                          }).toList(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE8E8E8)),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: DropdownButton(
                          isExpanded: true,
                          underline: SizedBox(),
                          hint: Text(
                            'شهر انتهاء الصلاحية',
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff707070)),
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
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 100),
                  decoration: BoxDecoration(
                    // color: Color(0xffF96F90),
                    border: Border.all(color: Color(0xffE8E8E8)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xff707070)),
                        border: InputBorder.none,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('طريقة الدفع او السداد',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ],
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: TextField(
                      textAlign: TextAlign.right,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'أكتب هنا',
                        hintStyle:
                            TextStyle(fontSize: 15, color: Color(0xff707070)),
                        border: InputBorder.none,
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => StoreSignUp()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 170),
                    decoration: BoxDecoration(
                      color: Color(0xffFFC83D),
                      border: Border.all(color: Color(0xffE8E8E8)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Center(
                      child: Text(
                        'ارسال',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ));
  }
}
