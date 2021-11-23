import 'package:flutter/material.dart';
import 'package:sweet/screens/login.dart';

class SplashScreen extends StatefulWidget {
 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Halaak BG.png'),
            fit: BoxFit.fill,
          ),
        ),
        child:  Center(
          child: Image.asset(
                        'assets/logo_screen.png',
                        height: 300,
                      ),
        ),
      ),
      
    );
  }
}