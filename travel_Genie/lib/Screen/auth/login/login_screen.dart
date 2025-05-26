import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/auth/login/forget_password.dart';
import 'package:travel_genie/Screen/auth/signup/signup_screen.dart';
import 'package:travel_genie/Screen/home/home_Screen.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';
import 'package:travel_genie/widgets/widgets.dart';

class LoginScreen extends StatefulWidget {

   LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final  TextEditingController emailController=TextEditingController();
   final TextEditingController passwordController=TextEditingController();
   bool _obscureText =true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image(image: AssetImage('assets/images/authImg/login1.png'),fit: BoxFit.cover,),
          ),
          Positioned(
              bottom: 12,
              left: 12,
              right: 12,

              child: Container(
                decoration: BoxDecoration(
                    color: ColorConstant.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text('Welcome Back!',textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'PSemiBolds',
                            color: ColorConstant.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),),
                      Text('Login to continue',textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'PRegulars',
                            color: ColorConstant.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),),
                      SizedBox(height: 40,),

                      Text(' Email',textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PRegulars',
                          color: ColorConstant.white,
                          // fontSize:
                        ),),
                      SizedBox(height: 8,),
                      TextField(
                        controller: emailController,
                        style: TextStyle(color: ColorConstant.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide(width: 12)),
                          // labelText: 'ID',
                            hintText: 'Email,user id, phone no,',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(color: ColorConstant.skyBlue),
                            ),

                        ),),
                      SizedBox(height: 20,),

                      Text(' Password',textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PRegulars',
                          color: ColorConstant.white,
                          // fontSize:
                        ),),
                      TextField(
                        controller: passwordController,
                        style: TextStyle(color: ColorConstant.white),
                        obscureText: true,
                        decoration: InputDecoration(

                          // labelText: 'password',
                            hintText: 'password',
                            // prefixIcon:,
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                            ),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                                borderSide: BorderSide(color: ColorConstant.skyBlue)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),                        ),

                      ),
                      SizedBox(height: 20,),


                      UiHelper.CustomButtom(callback: (){

                      }, buttonName: 'Login'),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
                        },
                            child: Text('Forget password?',style: TextStyle(color: ColorConstant.white),)
                        ),
                      ),
                      SizedBox(height: 30,),
                      
                      Row(
                        children: [
                          Expanded(child: Divider(color: Colors.white70,)),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Or',style: TextStyle(color: ColorConstant.white),),),
                          Expanded(child: Divider(color: Colors.white70,)),

                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialButton('assets/images/authImg/google.png'),
                          SizedBox(width: 20,),
                          socialButton('assets/images/authImg/facebook.png'),
                        ],
                      ),


                      SizedBox(height: 30,),

                      Center(
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                        }, child: Text.rich(
                          TextSpan(
                            text: "Don't have an account?   ",
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                  color: ColorConstant.skyBlue,
                                  fontWeight: FontWeight.bold
                                )
                              )
                            ]
                          ),
                            style: TextStyle(
                                color: ColorConstant.white,
                                fontWeight: FontWeight.bold
                            )

                            )

                        ),
                      )


                    ],
                  ),
                ),
              ))
        ],
      )

    );
  }


}
