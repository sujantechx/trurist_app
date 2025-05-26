import 'package:flutter/material.dart';

Widget socialButton(String imagePath){
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
    ),
    child: Image.asset(imagePath,width: 24,height: 24,fit: BoxFit.cover,),
  );
}