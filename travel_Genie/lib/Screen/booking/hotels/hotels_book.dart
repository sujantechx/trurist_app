import 'package:flutter/material.dart';
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
                  height: 80,
                  decoration: BoxDecoration(
                    color: ColorConstant.grey,
                  borderRadius:BorderRadius.circular(15)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                    ],
                  )
                  // Text("DAFgdafg")
                ),
                ///third part
                SizedBox(
                  height: 10,
                ),
                ///last
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
      ),
    );
  }
}
