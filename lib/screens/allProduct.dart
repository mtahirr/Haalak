import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sweet/screens/checkout.dart';

class AllProduct extends StatefulWidget {
  @override
  _AllProductState createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  List img = [
    'assets/cup.png',
    'assets/donut.png',
    'assets/cup.png',
    'assets/donut.png',
    'assets/cup.png',
    'assets/donut.png',
  ];
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: InkWell(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => CheckOut()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            color: Color(0xff67293A),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ريال',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    ' 4',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF96F90),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  'ارسل طلب',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15),
                ),
              ),
            ],
          ),
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
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: img.length,
            itemBuilder: (context, index) {
              return myContainer(index);
            }),
      ),
    );
  }

  Widget myContainer(index) {
    return InkWell(
      onTap: () {
        _ButtonPressed();
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffE8E8E8)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'ريال',
                          textAlign: TextAlign.end,
                          style:
                              TextStyle(color: Color(0xffF96F90), fontSize: 16),
                        ),
                        Text(
                          ' 4',
                          style:
                              TextStyle(color: Color(0xffF96F90), fontSize: 16),
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
                child: Image.asset(img[index]),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _ButtonPressed() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (BuildContext context, setState) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Image.asset('assets/close.png')],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    child: Image(
                      image: AssetImage("assets/large_donut.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'ريال',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: Color(0xffF96F90), fontSize: 16),
                                ),
                                Text(
                                  ' 4',
                                  style: TextStyle(
                                      color: Color(0xffF96F90), fontSize: 16),
                                ),
                              ],
                            ),
                            Text(
                              'دونات',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'يُعد كريسبي كريم من أشهر خيارات محلات دونات دبي وأفضلها بالنسبة للكثيرين، ويجدر بالذكر أنه يمتلك أكثر من 30 فرعاً في الإمارات العربية المتحدة، بالإضافة إلى العديد من الفروع الأُخرى في مختلف أنحاء العال',
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(color: Color(0xff707070), fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'العدد',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xfff1f1f1)),
                              child: Center(
                                  child: Icon(Icons.remove,
                                      size: 25, color: Color(0xff333333))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffffc83d)),
                              child: Center(
                                  child: Icon(Icons.add,
                                      size: 25, color: Colors.white)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffF96F90),
                          ),
                          child: Center(
                            child: Text(
                              "اضافة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          });
        });
  }
}
