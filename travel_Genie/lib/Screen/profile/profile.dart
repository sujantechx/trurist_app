import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_genie/Booking/booking_detels.dart';
import 'package:travel_genie/Hellp%20Support/help_support.dart';
import 'package:travel_genie/Screen/auth/auth_Screen.dart';
import 'package:travel_genie/Screen/profile/edit_profile.dart';
import 'package:travel_genie/Wishlist/wishlist.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> _logOut(BuildContext context)async{
    final prefs=await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AuthScreen(),));
  }
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
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Stack(
                      children: [
                      Positioned(
                        left: 5,
                        top: 10,
                        child: Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                            // color: ColorConstant.grey,
                          image: DecorationImage(image: AssetImage('assets/images/sujan.jpg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)
                        ),),
                      ),
                        SizedBox(width: 20,),
                        Positioned(
                          left: 90,
                          top: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sujan Sahu",style: TextStyle(
                                fontFamily: 'PSemiBolds',
                                fontSize: 20
                              ),),
                              UiHelper.CustomTextRegular(textinput: "Edit Profile")
                            ],
                          ),
                        ),
                        // SizedBox(width: 110,),
                        Positioned(
                            right: 5,
                            bottom: 30,
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
                              },
                                child: Icon(Icons.arrow_forward_ios)))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ///cupon
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:Colors.green,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              image: DecorationImage(image: AssetImage('assets/images/truroff.png'),fit: BoxFit.fitWidth)),
                          child: Center(child: Text("Best deals are her")),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                /// Wishlist
                InkWell(
                  onTap: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => Wishlist(),));
                },
                  child: Container(
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
                ),
                SizedBox(height: 10,),
                ///Bookings
                InkWell(
                  onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) => BookingDetels(),));
                  },
                  child: Container(
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
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HelpSupport(),));
                    },
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
                ),
                SizedBox(height: 20,),
                UiHelper.CustomButtom(callback: ()=>_logOut(context), buttonName: 'Logout')

              ],
            ),
          )
      ),
    );
  }
}
