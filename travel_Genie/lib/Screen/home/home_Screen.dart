import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: ColorConstant.skyBlue.withOpacity(0.7)
        ),
        child: Center(child: Text('Welcome Home')),
      ),

    );
  }
}
