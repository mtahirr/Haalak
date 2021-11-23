import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sweet/screens/allProduct.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  int index = 0;
  int _current = 0;
  List carouselData = [
    "assets/Rectangle 44.png",
    "assets/Rectangle 45.png",
    "assets/Rectangle 46.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: SingleChildScrollView(
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
                            style:
                                TextStyle(color: Color(0xff707070), fontSize: 16),
                          ),
                          Text(
                            'عاصم بن رياض',
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(color: Color(0xff333333), fontSize: 16),
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
                height: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Swiper(
                          onIndexChanged: (value) {
                            setState(() {
                              _current = value;
                            });
                          },
                          itemCount: carouselData.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image(
                              image: AssetImage(carouselData[index]),
                              fit: BoxFit.cover,
                            );
                          },
                          layout: SwiperLayout.DEFAULT,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(carouselData, (value, url) {
                        return Container(
                          width: 10.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _current == value
                                ? Color(0xffFFC83D)
                                : Colors.grey,
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اختر طلبك المفضل',
                            textAlign: TextAlign.right,
                            style:
                                TextStyle(color: Color(0xff333333), fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      decoration: BoxDecoration(
                        color: Color(0xffFFF0F4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffF96F90),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
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
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 10),
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
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 35, vertical: 10),
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
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
        
                                  onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AllProduct()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Mask Group 2.png'))),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 110,
                                        ),
                                        Text(
                                          'قهوة وحلى',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: InkWell(
                                   onTap: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> AllProduct()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Mask Group 3.png'))),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 110,
                                        ),
                                        Text(
                                          'باسكن روبنز',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Mask Group 3.png'))),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 110,
                                      ),
                                      Text(
                                        'باسكن روبنز',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Mask Group 2.png'))),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 110,
                                      ),
                                      Text(
                                        'قهوة وحلى',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
