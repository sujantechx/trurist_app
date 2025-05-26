import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/auth/login/login_screen.dart';
import 'package:travel_genie/Screen/onbording/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          // child:
          // Text("GT"),

          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/logo/splash_logo1.png'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(150)
          ),
        ),
        // Image(image: AssetImage('assets/logo/splash_logo1.png')),
      ),
    );
  }
}
