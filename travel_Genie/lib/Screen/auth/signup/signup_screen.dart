import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/auth/login/login_screen.dart';

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

      body: Center(
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
    );
  }
}
