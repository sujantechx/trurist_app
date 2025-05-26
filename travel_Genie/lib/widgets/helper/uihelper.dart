import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';

class UiHelper{
  static CustomButtom({required VoidCallback callback, required String buttonName}){
    return SizedBox(
      height: 45,
      width: double.infinity,
      // width: double.infinity,
      child: ElevatedButton(onPressed: (){
        callback();
      },
          style: ElevatedButton.styleFrom(
            backgroundColor:ColorConstant.skyBlue,
            padding: EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15)
            )
          ),
          child: Text(
            buttonName,style: TextStyle(fontSize: 15,color:ColorConstant.white),
          )),
    );
  }
  
}