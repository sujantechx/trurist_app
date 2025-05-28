

import 'package:flutter/material.dart';
import 'package:travel_genie/database/staicdata/catagory.dart';
import 'package:travel_genie/database/staicdata/top_destination.dart';
import 'package:travel_genie/database/staicdata/top_packages.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'dart:async';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  var searchInputController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
                child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,

            children: [
            /// first part
            Container(
            margin: EdgeInsets.only(right: 15,top: 10),
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorConstant.grey,

              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              /// first line
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      color: Colors.greenAccent
                    ) ,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Good Morning",style: TextStyle(
                        fontSize: 16,color: ColorConstant.black
                      ),),
                      Text("Name S",style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontFamily: 'PSemiBolds',
                          fontSize: 20,color: ColorConstant.black
                      ),),

                    ],
                  ),
                  SizedBox(width: 100,),
                  Icon(Icons.location_on),
                  SizedBox(width: 20,),
                  Icon(Icons.notification_add)

                ],
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchInputController,
                    style: TextStyle(
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search_rounded),
                      suffixIcon: Icon(Icons.tune),
                      hintText: "Let's Explore",
                      border: InputBorder.none,
                      filled: true,
                      fillColor: ColorConstant.white,
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),borderSide: BorderSide(color: ColorConstant.grey))
                    ),
                  ),
                ),
              )
              /*
              Container(
                margin: EdgeInsets.all(8),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.white,

                ),
                child: Row(
                  children: [
                    Icon(Icons.search_rounded)
                  ],
                ),

              )

               */
            ],

              ),
              ),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  var categorys=category[index];
                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(categorys['img']),fit: BoxFit.cover,

                              ),
                              color: ColorConstant.black.withOpacity(0.9),
                            ),
                            child: Text(categorys['title'],textAlign: TextAlign.center,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstant.white
                            ),),
                          ),
                        ),
                        

                      ],
                    );
                  })
              /*SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    Chip(label: Text("Desert"),),
                    SizedBox(width: 5,),
                    Chip(label: Text("Mountain")),
                    SizedBox(width: 5,),

                    Chip(label: Text("Jungle")),
                    SizedBox(width: 5,),

                    Chip(label: Text("Beach")),
                    SizedBox(width: 5,),

                    Chip(label: Text("City")),
                    SizedBox(width: 5,),

                    Chip(label: Text("Farm")),
                  ],
                ),
              ),

               */
            ),

            ///top destination
            SizedBox(height: 10,),
            Text("Top Destinations ", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'PSemiBolds',
                fontSize: 18,

                // fontSize: ,
                color: ColorConstant.black
            ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: topDestination.length,
                  itemBuilder: (context, index) {
                   var destination=topDestination[index];
                   return Stack(
                     children: [
                       Container(
                         margin: EdgeInsets.all(10),
                         width:180,
                         height: double.infinity,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           image: DecorationImage(image: NetworkImage(destination['img'],),fit: BoxFit.cover
                           ),

                           color: ColorConstant.skyBlue

                         ),
                        // child: Image(image: NetworkImage(destination["img"])),
                       ),
                       Positioned(
                           right: 30,
                           top: 25,
                           child:Icon(destination['hartIcon'],color:ColorConstant.white ,size: 35,) ),
                       Positioned(
                         left: 15,
                         right: 15,
                         bottom:15,
                         child: Container(
                           height: 50,
                           decoration: BoxDecoration(
                               color: ColorConstant.black.withOpacity(0.2),
                               borderRadius: BorderRadius.circular(15)
                           ),
                         child: Stack(
                           children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(destination["title"],style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'PSemiBolds',
                                    color: ColorConstant.white
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(destination["subtitle"],style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontFamily: 'PRegular',
                                      color: ColorConstant.white
                                  ),),
                                )
                              ],
                            ),
                             Positioned(
                                 right: 12,
                                 bottom: 15,
                                 child:Icon(destination['icon'],color:ColorConstant.white ,) )

                           ],
                         )
                         ),

                       ),
                     ],
                   );
                    }
              )
            ),
              SizedBox(height: 10,),
              /// top packages
              Text("Top Packages ", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'PSemiBolds',
                  // fontSize: ,
                  color: ColorConstant.black
              ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 200,
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
                            width: 260,
                            decoration: BoxDecoration(
                               color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(image: NetworkImage(topPackages['img']),fit: BoxFit.cover)
                            ),
                          ),
                        ),
                        /// package description
                        Positioned(
                          bottom: 18,left: 18, right: 18,
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
                                      padding: const EdgeInsets.only(left: 10.0,top: 5),
                                      child: Text(topPackages['title'], style: TextStyle(
                                         color: ColorConstant.white,
                                        fontFamily: 'PSemiBolds'
                                      ),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0,),
                                      child: Text(topPackages['subtitle'], style: TextStyle(
                                          color: ColorConstant.white,
                                          fontFamily: 'PRegulars'
                                      ),),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 18,bottom: 18,
                                  child: Container(
                                    child: Text(topPackages['price'],style: TextStyle(
                                      color: ColorConstant.white
                                    ),),))
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
        )
      )

    );
  }
}
