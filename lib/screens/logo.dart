import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40, 
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8), 
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF35AADA),  
              Color(0xFF447093),
              Color(0xFF445576),
              Color(0xFF418EB6),  
            ],
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 8, 
                height: 8,
                color: Colors.white,  
                margin: EdgeInsets.all(4),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(4), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}