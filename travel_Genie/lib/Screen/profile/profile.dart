import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'PSemiBold'
                    ),),
                    Icon(Icons.settings)
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text("dsfdsa")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Text("dsfdsa")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                /// Wishlist
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.favorite_border),
                              SizedBox(width: 10,),
                              UiHelper.CustomTextRegular(textinput: "Wishlist"),
                              // Icon(Icons.arrow_forward_ios),


                            ],
                          ),

                        ),
                        Positioned(
                            right: 7,
                            bottom: 15,
                            child: Icon(Icons.arrow_forward_ios)
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ///Bookings
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.verified_outlined),
                              SizedBox(width: 10,),
                              UiHelper.CustomTextRegular(textinput: "Bookings"),
                              // Icon(Icons.arrow_forward_ios),

                            ],
                          ),

                        ),
                        Positioned(
                            right: 7,
                            bottom: 15,
                            child: Icon(Icons.arrow_forward_ios)
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                /// Receipt
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.receipt),
                              SizedBox(width: 10,),
                              UiHelper.CustomTextRegular(textinput: "Receipt"),
                              // Icon(Icons.arrow_forward_ios),


                            ],
                          ),

                        ),
                        Positioned(
                            right: 7,
                            bottom: 15,
                            child: Icon(Icons.arrow_forward_ios)
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                /// Payment Method
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.payment),
                              SizedBox(width: 10,),
                              UiHelper.CustomTextRegular(textinput: "Payment Method"),
                              // Icon(Icons.arrow_forward_ios),


                            ],
                          ),

                        ),
                        Positioned(
                            right: 7,
                            bottom: 15,
                            child: Icon(Icons.arrow_forward_ios)
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                /// Helps & Supports
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Icon(Icons.support_agent_outlined),
                              SizedBox(width: 10,),
                              UiHelper.CustomTextRegular(textinput: "Helps & Supports"),
                              // Icon(Icons.arrow_forward_ios),


                            ],
                          ),

                        ),
                        Positioned(
                            right: 7,
                            bottom: 15,
                            child: Icon(Icons.arrow_forward_ios)
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
