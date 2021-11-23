import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sweet/screens/checkout.dart';
import 'package:sweet/screens/home.dart';
import 'package:sweet/screens/homeStore.dart';

class AnimatedBar extends StatefulWidget {
  @override
  State<AnimatedBar> createState() => _AnimatedBarState();
}

class _AnimatedBarState extends State<AnimatedBar> {
  int _currentIndex = 0;

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
              HomeStore(),
            Container(
              color: Colors.red,
            ),
                   Home(),
            CheckOut(),
          
     
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
          child: BottomNavyBar(
            backgroundColor: Color(0xff67293A),
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                activeColor: Color(0xffF96F90),
              
                title: Text('Item One',  style: TextStyle(
                      color: _currentIndex == 0 ? Colors.white : Colors.grey,
                    ),),
                icon: Icon(Icons.storefront,  color: _currentIndex == 0 ? Colors.white : Colors.grey),
                  
              ),
              BottomNavyBarItem(
                  activeColor: Color(0xffF96F90),
                  inactiveColor: Colors.grey,
                  title: Text('التنبيهات',  style: TextStyle(
                     fontWeight: FontWeight.w600,
                      color: _currentIndex == 1 ? Colors.white : Colors.grey,
                    ),),
                  icon: Icon(Icons.notifications,color: _currentIndex == 1 ? Colors.white : Colors.grey,),),
              BottomNavyBarItem(
                  activeColor: Color(0xffF96F90),
                  // inactiveColor: Colors.grey,
                  title: Text(
                    'الرئيسية',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: _currentIndex == 2 ? Colors.white : Colors.grey,
                    ),
                  ),
                  icon: Image.asset('assets/Group 168.png',  color: _currentIndex == 2 ? Colors.white : Colors.grey,)),
              BottomNavyBarItem(
                  activeColor: Color(0xffF96F90),
                  // inactiveColor: Colors.grey,
                  title: Text('المفضلة',  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: _currentIndex == 3 ? Colors.white : Colors.grey,
                    ),),
                  icon: Icon(Icons.favorite,  color: _currentIndex == 3 ? Colors.white : Colors.grey,)),
                   BottomNavyBarItem(
                  activeColor: Color(0xffF96F90),
                  // inactiveColor: Colors.grey,
                  title: Text('البحث',  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      color: _currentIndex == 4 ? Colors.white : Colors.grey,
                    ),),
                  icon: Icon(Icons.search,  color: _currentIndex == 4 ? Colors.white : Colors.grey,)),
            ],
          ),
        ),
      ),
    );
  }
}
