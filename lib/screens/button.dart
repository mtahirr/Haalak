import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  RoundedButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
           boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 5),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Text(
          '$title',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}