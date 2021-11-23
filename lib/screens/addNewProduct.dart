import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  @override
  _AddNewProductState createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
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
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Upload Product Image',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff858585),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 130),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 65,
                              backgroundColor: Color(0xffF96F90),
                              child: CircleAvatar(
                                radius: 62,
                                backgroundColor: Color(0xfff1f1f1),
                                child: Image.asset('assets/donut.png'),
                              ),
                            ),
                            Positioned(
                              left: 10,
                              right: 0,
                              top: 80,
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xffF96F90)),
                                  child: Icon(
                                    Icons.camera_alt_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
                              hintText: 'Product Name',
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              hintText: 'Product Price',
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        child: TextField(
                          maxLines: 5,
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              
                              hintText: 'Product Detail',
                              hintStyle: TextStyle(
                                  fontSize: 14, color: Color(0xff707070)),
                              border: InputBorder.none,
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                     Row(
                       children: [
                         Expanded(
                           flex: 3,
                           child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                           decoration: BoxDecoration(
                          // color: Color(0xffF96F90),
                          border: Border.all(color: Color(0xffE8E8E8)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text('Cancel',style: TextStyle(
                            color: Color(0xff707070),
                            fontSize: 18
                          ),),
                        ),
                         ),),
                         SizedBox(width: 10,),
                           Expanded(
                           flex: 4,
                           child: Container(
                             padding: EdgeInsets.symmetric(vertical: 15),
                           decoration: BoxDecoration(
                          // color: Color(0xffF96F90),
                        color: Color(0xffF96F90),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text('Upload Product',style: TextStyle(
                            color: Colors.white,
                            
                            fontSize: 18
                          ),),
                        ),
                         ),),
                       ],
                     )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
