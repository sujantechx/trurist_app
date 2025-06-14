import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/hotels/personal_details.dart';
import 'package:travel_genie/database/staicdata/hotels_data.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';

class HotelDetails extends StatelessWidget {
  final Map<String,dynamic>hotel;
  const HotelDetails({Key? key, required this.hotel}) : super(key: key);
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(hotel['title'] ?? 'Hotel Detail')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex:2,
              child:  Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28),bottomRight: Radius.circular(28)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                      hotel['img']
                    ))
                    ),
                  ),
              /// top icons
                  Positioned(
                left: 25,top: 40,
                child: Container(
                  height: 30,
                  width:30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: ColorConstant.white.withOpacity(0.8)
                  ),
                  child: Center(child: Icon(Icons.arrow_back_ios)),
                ),
              ),
                  Positioned(
                    right: 60,top: 40,
                    child: Container(
                      height: 30,
                      width:30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConstant.white.withOpacity(0.8)
                      ),
                      child: Center(child: Icon(Icons.favorite_border)),
                    ),
                  ),
                  Positioned(
                    right: 15,top: 40,
                    child: Container(
                      height: 30,
                      width:30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: ColorConstant.white.withOpacity(0.8)
                      ),
                      child: Center(child: Icon(Icons.share)),
                    ),
                  ),
                  ///undrer contenar
                  Positioned(
                      bottom: 20,
                      left: 20,
                      right: 20,
                      child: Container(
                        // height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstant.skyBlue.withOpacity(0.6)
                        ),
                        child: Stack(
                          children: [

                            /// right side coner content
                            Positioned(
                                right: 20,top: 20,child: Row(
                              children: [
                                Card(child: Icon(Icons.location_on),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),)
                              ],
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  SizedBox(height: 30,),
                                  Text(hotel['title'],style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'PSemiBolds',
                                      color: ColorConstant.white
                                  ),),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,size: 15,color: Colors.white,),
                                      Text(hotel['location'],style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12
                                      ),)
                                    ],
                                  ),
                                  SizedBox(height: 12,),
                                  Row(
                                    children: [

                                      Text(hotel['price'],style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12
                                      ),),
                                      SizedBox(width: 5,),
                                      Container(
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:BorderRadius.circular(10),
                                            color: Colors.red
                                        ),
                                        child: Center(
                                          child: Text(hotel['offer'],style: TextStyle(
                                              // fontFamily: 'PMediums',
                                              color: ColorConstant.white
                                          ),),
                                        ),
                                      )


                                    ],
                                  ),
                                  SizedBox(height: 12,),
                                  /// overview
                                  Row(
                                    children: [
                                      Image(image: AssetImage('assets/icons/menu.png'),height: 20,width: 20,),
                                      Text("  Overview",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13
                                      ),),
                                      SizedBox(width: 5,),



                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    height: 80,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                    ),
                                    child: Center(child: Text(hotel['description'],textAlign: TextAlign.justify,)),
                                  ),
                                  SizedBox(height: 12,),
                                  /// nerby place
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,size: 20,),
                                      Text("  Nearby Place",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13
                                      ),),
                                      SizedBox(width: 5,),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  ///list of map extact list
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    height: 40,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                    ),
                                    child: Center(
                                      child: Text(
                                        hotel['nearbyPlace'].join(', '), /// extrac the list of map data
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),

                                  ///amenties
                                  Row(
                                    children: [
                                      Icon(Icons.verified_sharp,color: Colors.white,size: 20,),
                                      Text("  Amenities",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13
                                      ),),
                                      SizedBox(width: 5,),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    height: 40,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white
                                    ),
                                    child: Center(
                                      child: Text(
                                        hotel['amenities'].join(', '), /// extrac the list of map data
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),



                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                  
                  ),

                   

                ],
              )),

          Expanded(
              flex:1,
              child:  Container(
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Stack(
                    children: [
                      SizedBox(height: 10,),
                      // (
                      //   child: TabBar(tabs: [
                      //     Tab(text: 'Review',),
                      //     Tab(text: 'Policy',)
                      //                 ]
                      //             ),
                      // )
                      Row(
                        children: [
                          Text("Review",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),),
                          SizedBox(width: 20,),
                          Text("Policy",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                          ),)
                        ],
                      ),
                      ListView.builder(
                        itemCount: hotelsDetels.length,
                        itemBuilder: (context, index) {
                        return Container(

                        );
                      },),
                      Positioned(
                          bottom: 30,
                          left: 10,
                          right: 10,
                          child: SizedBox(
                            child: ElevatedButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PersonalDetails(),));
                              },
                                style:ElevatedButton.styleFrom(
                                  backgroundColor: ColorConstant.skyBlue,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                                ),

                                child: Text("Book Now ",style: TextStyle(color: Colors.white),),),
                          ))


                    ],
                  ),
                )
              )
          ),


        ],
      ),

    );

  }
}
