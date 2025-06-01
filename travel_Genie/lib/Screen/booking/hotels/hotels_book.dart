import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/flights/flight_book.dart';
import 'package:travel_genie/Screen/booking/hotels/available_hotels.dart';
import 'package:travel_genie/database/staicdata/top_packages.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';

class HotelsBook extends StatefulWidget {
  const HotelsBook({super.key});

  @override
  State<HotelsBook> createState() => _HotelsBookState();
}

class _HotelsBookState extends State<HotelsBook> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        SizedBox(width: 90,),
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
                    height: 56,
                    decoration: BoxDecoration(
                      color: ColorConstant.grey,
                    borderRadius:BorderRadius.circular(15)
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UiHelper.CustomButtomFlex(callback: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HotelsBook(),));
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
                  ////*
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 300,
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AvailableHotels(),));
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
                  UiHelper.CustomTextBpld(textinput: "  Nearby"),
                  SizedBox(
                      height: 230,
                      child: ListView.builder(
                          itemCount: topPackage.length,
                          scrollDirection: Axis.horizontal,

                          itemBuilder: (_,index){
                            var topPackages= topPackage[index];
                            return Stack(
                              children: [
                                /// image
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 160,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: NetworkImage(topPackages['img']),fit: BoxFit.cover)
                                    ),
                                  ),
                                ),
                                /// package description
                                Positioned(
                                    bottom: 8,left: 8, right: 8,
                                    child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color:ColorConstant.black.withOpacity(0.3)
                                      ),
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5),
                                                child: Text(topPackages['title'], style: TextStyle(
                                                    color: ColorConstant.white,
                                                    fontFamily: 'PSemiBolds'
                                                ),),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20.0,),
                                                child: Text(topPackages['subtitle'], style: TextStyle(
                                                    color: ColorConstant.white,
                                                    fontFamily: 'PRegulars'
                                                ),),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                              right: 3,bottom: 18,
                                              child: Container(
                                                child: Icon(Icons.arrow_forward,color: ColorConstant.white)

                                              )),
                                          Positioned(
                                              left: 3,bottom: 8,
                                              child: Container(
                                                  child: Icon(Icons.location_on,size: 15,color: ColorConstant.white)

                                              ))
                                        ],
                                      ),

                                    )
                                ),
                                /// Icons
                                Positioned(
                                  right: 18,top: 18,
                                  child: Icon(topPackages['hartIcon'],color: ColorConstant.white,size: 35,),),
                                /// rating count
                                Positioned(
                                    top: 12,left: 12,
                                    child: Card(

                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 5.0,right: 5),
                                        child: Row(
                                          children: [
                                            Icon(topPackages['star'],color: Colors.yellow,),
                                            Text(topPackages['rating'],style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),)
                                          ],
                                        ),
                                      ),
                                    ))

                              ],
                            );
                          })
                  )


                ],
              ),
            ),
          )
      ),
    );
  }
}
