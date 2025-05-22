import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextField(decoration: InputDecoration(
             hintText: 'Email,user id, phone no,',
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
           ),),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(
                hintText: 'password',
                // prefixIcon:,
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18))
            ),),
            SizedBox(height: 20,)
            
          ],
          
        ),
      ),

    );
  }
}
