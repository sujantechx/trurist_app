import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/auth/login/login_screen.dart';

class ForgetPassword extends StatefulWidget {
   ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var emailController=TextEditingController();

   var otpController=TextEditingController();

   var newPasswordController=TextEditingController();

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                  controller: otpController,
                  keyboardType:TextInputType.number,
                  decoration:InputDecoration(
                      hintText: 'OTP',
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
                  ),),
              SizedBox(height: 10,),

              TextField(
                 controller: newPasswordController,
                 decoration:InputDecoration(
                 hintText: 'password',
                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
               )
               ),
              SizedBox(height: 18,),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              }, child: Text('submit'))

            ],
          ),
        ),
      ),
    );
  }
}
