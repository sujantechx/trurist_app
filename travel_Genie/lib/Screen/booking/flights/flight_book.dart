import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/hotels/hotels_book.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';

class FlightBook extends StatefulWidget {
  const FlightBook({super.key});

  @override
  State<FlightBook> createState() => _FlightBookState();
}

class _FlightBookState extends State<FlightBook> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// first
                Container(
                  margin: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 60,

                  decoration: BoxDecoration(
                      color: ColorConstant.grey,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        width: 50,height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.greenAccent,
                          // image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/images/sujan.jpg")),

                        ),
                      ),
                      SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("Your Location",),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on,size: 15,),
                              Text("Bhubaneswar,India",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'PSemiBolds',
                                  fontSize: 16
                              ),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 100,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.notification_add)
                        ],
                      )

                    ],
                  ),
                ),

                ///second part
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.only(left: 40,right: 40),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: ColorConstant.grey,
                        borderRadius:BorderRadius.circular(15)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UiHelper.CustomButtomFlex(callback: (){
                          Navigator.pop(context, MaterialPageRoute(builder: (context) => HotelsBook(),));
                        }, buttonName: "Hotels"),
                        SizedBox(width: 30,),

                        UiHelper.CustomButtomFlex(callback: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FlightBook(),));
                        }, buttonName: "Flight")
                      ],
                    )
                  // Text("DAFgdafg")
                ),
                ///third part
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 380,
                    width: double.infinity,
                    decoration:BoxDecoration(
                        color: ColorConstant.grey,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              UiHelper.CustomButtomFlex(callback: (){}, buttonName: "One way"),
                              UiHelper.CustomButtomFlex(callback: (){}, buttonName:"Round trip"),
                              UiHelper.CustomButtomFlex(callback: (){}, buttonName: "Multi city"),

                            ],
                          ),
                          SizedBox(height: 10,),

                          UiHelper.CustomTextRegular(textinput: "Destination"),
                          SizedBox(height: 10,),
                          Container(
                            height: 35,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorConstant.white
                            ),
                            child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(width: 10,),
                                  UiHelper.CustomText2(textinput: "Odisha")
                                ]
                            ),
                          ),
                          SizedBox(height: 10,),
                          UiHelper.CustomTextRegular(textinput: "Gusts & Room"),
                          SizedBox(height: 10,),
                          Container(
                            height: 35,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorConstant.white
                            ),
                            child: Row(
                              children: [
                                // Icon(Icons.person),
                                Icon(Icons.person_add),
                                SizedBox(width: 10,),
                                UiHelper.CustomText2(textinput: "01 Guest")

                              ],),
                          ),
                          SizedBox(height: 10,),
                          UiHelper.CustomTextRegular(textinput: "Check in"),
                          SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 35,
                                width: 150,
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: ColorConstant.white
                                ),
                                child:  Row(
                                  children: [
                                    // Icon(Icons.person),
                                    Icon(Icons.calendar_month),
                                    SizedBox(width: 10,),
                                    UiHelper.CustomText2(textinput: "May-01-2025")

                                  ],),
                              ),
                              // SizedBox(width: 10,),

                              Container(
                                height: 35,
                                width: 150,
                                // width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: ColorConstant.white
                                ),
                                child:  Row(
                                  children: [
                                    // Icon(Icons.person),
                                    Icon(Icons.calendar_month),
                                    SizedBox(width: 10,),
                                    UiHelper.CustomText2(textinput: "May-01-2025")

                                  ],),
                              )
                            ],
                          ),
                          SizedBox(height: 15,),
                          UiHelper.CustomButtom(callback: (){

                          }, buttonName: "Search")
                        ],
                      ),
                    ),
                  ),
                ),

                ///last
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomTextBpld(textinput: "Upcoming Flight"),
              ],
            ),
          )
      ),
    );
  }
}
