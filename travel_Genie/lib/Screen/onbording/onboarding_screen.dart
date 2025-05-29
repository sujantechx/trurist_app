import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_genie/Screen/auth/auth_Screen.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';
import 'dart:async';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  /// page control to mov
  final PageController _controller=PageController();
  /// dataset
  final List<Map<String,dynamic>> pages=[
    {
      'img':'assets/images/onboarding/first.png',
      'title': ' Discover your Dream Travel Package',
      'subtitle':' Find the perfect all-in-one travel experience for your next gateway',
      'buttonText':'Get Started'
    },
    {
      'img':'assets/images/onboarding/img_2.png',
      'title': ' Book Flight with Ease and Hassles-Free',
      'subtitle':
          'Search, compare, and book flights at the best prices',
      'buttonText':'Next'
    },
    {
      'img':'assets/images/onboarding/third.png',
      'title': ' Stay at Top-Rated Hotels',
      'subtitle':
          ' Choose from Thousands of hotels for the perfect stay',
      'buttonText':'Next'
    },
  ];
  /// status check
  Future<void> _completLogin(BuildContext context)async{
    final prefs=await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthScreen(),));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: PageView.builder(
          controller: _controller,
          itemCount: pages.length,
          itemBuilder: (context,index){
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(pages[index]['img'],
                fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.3),
                ),
                Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Container(

                      decoration: BoxDecoration(
                          color: ColorConstant.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
                            Text(
                              pages[index]['title'],textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'PSemiBolds',
                                fontSize: 25,
                                color: ColorConstant.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 12,),
                            Text(
                              pages[index]['subtitle'],textAlign:TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'PRegulars',
                                  fontSize: 16,
                                  color: ColorConstant.white,

                              ),
                            ),
                            SizedBox(height: 30,),
                            SizedBox(
                              width: double.infinity,
                              child: UiHelper.CustomButtom(callback: (){
                                if(index < pages.length -1){
                                  _controller.nextPage(duration: Duration(milliseconds: 300),
                                      curve: Curves.easeIn);
                                }
                                else{
                                  ///Navigation to main app or log in Screen
                                  _completLogin(context); //status check to move
                                }
                              },
                                  buttonName: pages[index]['buttonText'])

                            )

                          ],
                        ),
                      ),
                    ))
              ],
            );

      }),
    );
  }
}
