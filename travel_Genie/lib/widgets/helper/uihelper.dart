import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';

class UiHelper{
  static CustomButtomFlex({required VoidCallback callback, required String buttonName}){
    return SizedBox(
      height: 45,
      width: 100,
      // width: double.infinity,
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
  static CustomTextBpld({required String textinput}){
    return Text(textinput,style: TextStyle(
      fontFamily: 'PSemiBolds',
      fontWeight: FontWeight.bold,

    ),);
  }

  static CustomText2({required String textinput}){
    return Text(textinput,style: TextStyle(
      fontFamily: 'PMediums',
      fontWeight: FontWeight.bold,

    ),);}
  static CustomTextRegular({required String? textinput}){
    return Text(textinput!,style: TextStyle(
      fontFamily: 'PRegulars',
      fontWeight: FontWeight.bold,

    ),);}
  static CustomTextBpldWhite({required String textinput}){
    return Text(textinput,style: TextStyle(
      fontFamily: 'PSemiBolds',
      fontWeight: FontWeight.bold,
      color: ColorConstant.white

    ),);
  }

  static CustomText2White({required String textinput}){
   return Text(textinput,style: TextStyle(
      fontFamily: 'PMediums',
      fontWeight: FontWeight.bold,
        color: ColorConstant.white


    ),);}
  static CustomTextRegularWhite({required String textinput}){
    return Text(textinput,style: TextStyle(
      fontFamily: 'PRegulars',
      fontWeight: FontWeight.bold,
        color: ColorConstant.white


    ),);}


}