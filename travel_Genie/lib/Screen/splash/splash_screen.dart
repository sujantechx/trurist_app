import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_genie/Screen/auth/auth_Screen.dart';
import 'package:travel_genie/Screen/auth/login/login_screen.dart';
import 'package:travel_genie/Screen/home/home_Screen.dart';
import 'package:travel_genie/Screen/onbording/onboarding_screen.dart';
import 'package:travel_genie/widgets/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _chackeSatus();/// call in status function

    // Timer(Duration(seconds: 2),(){
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    // });
  }

  Future<void> _chackeSatus()async{
    await Future.delayed(Duration(seconds: 2)); ///waiting time to navigate another page
    final prefs=await SharedPreferences.getInstance();
    /// check the first time open app
    bool isFirstTime=prefs.getBool('isFirstTime') ?? true;
    /// check already login
    bool isLoggedIn=prefs.getBool("isLoggedIn")?? false;

    if(isLoggedIn){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBar(),));
    }
    else if(isFirstTime){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthScreen(),));
    }
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
