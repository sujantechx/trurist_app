import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_genie/Screen/auth/login/login_screen.dart';
import 'package:travel_genie/Screen/auth/signup/signup_screen.dart';
import 'package:travel_genie/widgets/helper/colors.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final List<Map<String,dynamic>> authData=[
    {
      'img':
      'assets/images/authImg/l1.png',
      'title':'Ready to Travel? Pack your Bag',
      'subtitle': ' Start planing your dream trip now.'
      
    }
  ];
  /// check status login or not
  Future<void> _login(BuildContext context,String type)async{
    final prefs=await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);

    if(type=='Login'){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
    }
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image(image: AssetImage('assets/images/authImg/l1.png'),fit: BoxFit.cover,),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),

          ),

          Positioned(
              bottom: 12,
              left: 12,
              right: 12,

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
                      Center(
                        child: Text('Ready to Travel?',textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'PSemiBolds',
                          color: ColorConstant.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),),
                      ),
                      Center(
                        child: Text('Pack your Bag',textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'PSemiBolds',
                              color: ColorConstant.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),),
                      ),
                      SizedBox(height: 30,),

                      Center(
                        child: Text('Start planing your dream trip now.',textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              fontFamily: 'PRegulars',
                              color: ColorConstant.white,
                              // fontSize:
                          ),),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(onPressed: ()=> _login(context, "Login"),
                               child: Text('Login',style: TextStyle(color: ColorConstant.white,fontSize: 15),),
                                style: ElevatedButton.styleFrom(backgroundColor: ColorConstant.skyBlue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)
                                    )),

                              )
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                              child: ElevatedButton(onPressed: ()=> _login(context, 'Sign up'),
                               child: Text('Sign up',style: TextStyle(color: ColorConstant.black,fontSize: 15),),
                                style: ElevatedButton.styleFrom(backgroundColor: ColorConstant.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                                // animationDuration: Durations.medium1

                                ),

                              )
                          ),
                        ],
                      )


                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
