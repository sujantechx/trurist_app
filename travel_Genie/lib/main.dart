import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/splash/splash_screen.dart';

void main() {
  runApp( TravelGenie());
}
class TravelGenie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Travel Genie',
     theme: ThemeData(
       fontFamily: 'PRegular'
     ),
     home: SplashScreen(),
     debugShowCheckedModeBanner: false,
   );
  }
}
