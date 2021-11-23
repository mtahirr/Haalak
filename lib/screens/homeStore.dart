import 'package:flutter/material.dart';

class HomeStore extends StatefulWidget {
  @override
  _HomeStoreState createState() => _HomeStoreState();
}

class _HomeStoreState extends State<HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 25,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'اهلاً و سهلاً',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color(0xff707070), fontSize: 16),
                          ),
                          Text(
                            'عاصم بن رياض',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color(0xff333333), fontSize: 16),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFF0F4),
                                ),
                                child: Center(
                                    child: Image.asset('assets/boxes.png'),),),
                                     SizedBox(height: 10,),
                                    Text('New Orders')
                          ],
                        ),
                        // SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFF0F4),
                                ),
                                child: Center(
                                    child: Image.asset('assets/cart-plus.png'),),),
                                    SizedBox(height: 10,),
                                    Text('New Orders')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 40,horizontal: 45),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFF0F4),
                                ),
                                child: Center(
                                    child: Image.asset('assets/headset.png'),),),
                                     SizedBox(height: 10,),
                                    Text('New Orders')
                          ],
                        ),
                        // SizedBox(width: 10,),
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 40,horizontal: 45),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFF0F4),
                                ),
                                child: Center(
                                    child: Image.asset('assets/th-list.png'),),),
                                    SizedBox(height: 10,),
                                    Text('New Orders')
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
