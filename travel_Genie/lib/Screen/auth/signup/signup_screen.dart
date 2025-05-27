import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/auth/login/login_screen.dart';
import 'package:travel_genie/Screen/home/home_Screen.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';
import 'package:travel_genie/widgets/widgets.dart';

class SignupScreen extends StatefulWidget {

   SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var nameController=TextEditingController();

  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  var phoneController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/images/authImg/signup.png',fit: BoxFit.cover,),
          ),
          
          Positioned(
            bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.grey.withOpacity(0.3)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text('Welcome!', style: TextStyle(
                      fontFamily: 'PSemiBolds',
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: ColorConstant.white
                    ),),
                    Text('Create your Account', style: TextStyle(
                        fontFamily: 'PRegulars',
                        // fontSize: 25,
                        color: ColorConstant.white
                    ),),
                    SizedBox(height: 20,),
                    Text('Name', style: TextStyle(
                        fontFamily: 'PRegulars',
                        // fontSize: 25,
                        color: ColorConstant.white
                    ),),
                    TextField(
                      controller: nameController,
                      style: TextStyle(color: ColorConstant.white),
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),

                        ),
                        focusColor: ColorConstant.skyBlue,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),


                    SizedBox(height: 20,),
                    Text('Phone Number', style: TextStyle(
                        fontFamily: 'PRegulars',
                        // fontSize: 25,
                        color: ColorConstant.white
                    ),),
                    TextField(
                      controller: phoneController,
                      style: TextStyle(color: ColorConstant.white),
                      decoration: InputDecoration(
                          hintText: 'Phone Number',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),
                          focusColor: ColorConstant.skyBlue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                    ),

                    SizedBox(height: 20,),
                    Text('Email', style: TextStyle(
                        fontFamily: 'PRegulars',
                        // fontSize: 25,
                        color: ColorConstant.white
                    ),),
                    TextField(
                      controller: emailController,
                      style: TextStyle(color: ColorConstant.white),
                      decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),
                          focusColor: ColorConstant.skyBlue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                    ),

                    SizedBox(height: 20,),
                    Text('Password', style: TextStyle(
                        fontFamily: 'PRegulars',
                        // fontSize: 25,
                        color: ColorConstant.white
                    ),),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      style: TextStyle(color: ColorConstant.white),
                      decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),

                          ),
                          focusColor: ColorConstant.skyBlue,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          )
                      ),
                    ),

                    SizedBox(height: 20,),
                    UiHelper.CustomButtom(callback: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

                    }, buttonName: 'Sign Up'),

                    Text.rich(
                      TextSpan(
                        text: 'I agree all condition'
                      )
                    ),
                    SizedBox(height: 20,),

                    Row(

                      children: [
                        Expanded(child: Divider(color: Colors.white70,)),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Or',style: TextStyle(color: ColorConstant.white),),),
                        Expanded(child: Divider(color: Colors.white70,)),

                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        socialButton('assets/images/authImg/google.png'),
                        SizedBox(width: 20,),
                        socialButton('assets/images/authImg/facebook.png')
                      ],
                    ),

                    Align(
                      alignment: Alignment.center,
                      child: TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                          child: Text.rich(
                              TextSpan(
                                  text: 'Already have an account?',
                                  children: [
                                    TextSpan(
                                        text: "  Login",
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

                    ))
                  ],
                ),
              ))
        ],
      )

          /*
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration:InputDecoration(
                    hintText: 'Name',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: emailController,
                decoration:InputDecoration(
                    hintText: 'email',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: passwordController,
                decoration:InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: phoneController,
                decoration:InputDecoration(
                    hintText: 'phone num',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
                ),
              ),

              SizedBox(height: 18,),


              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              }, child: Text("submit")),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I have account'),
              TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
                  child: Text('Login')
              ),

              ])


            ],
          ),
        ),
      ),

           */
    );
  }
}
