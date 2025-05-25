import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/auth/login/forget_password.dart';
import 'package:travel_genie/Screen/auth/signup/signup_screen.dart';
import 'package:travel_genie/Screen/home/home_Screen.dart';

class LoginScreen extends StatefulWidget {

   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final  TextEditingController emailController=TextEditingController();

   final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome Travel Genie',style: TextStyle(fontSize: 20),),
           SizedBox(height: 28,),
           TextField(
             controller: emailController,
             decoration: InputDecoration(
               // labelText: 'ID',
             hintText: 'Email,user id, phone no,',
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
           ),),
            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                // labelText: 'password',
                hintText: 'password',
                // prefixIcon:,
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
                },
                    child: Text('forget password?')
                ),
                Text('Not any acc'),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                }, child: Text('Sign Up '))

              ],
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomeScreen() ,));
            }, child: Text('Login'))


          ],

        ),
      ),

    );
  }
}
