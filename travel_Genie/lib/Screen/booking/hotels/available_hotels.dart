import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/hotels/hotel_details.dart';
import 'package:travel_genie/database/staicdata/hotels_data.dart';
import 'package:travel_genie/widgets/helper/colors.dart';

class AvailableHotels extends StatefulWidget {
  const AvailableHotels({super.key});

  @override
  State<AvailableHotels> createState() => _AvailableHotelsState();
}

class _AvailableHotelsState extends State<AvailableHotels> {
  List<String> filters=[
    'Recommend','Cheapest', 'Star Rating', 'price'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            ///first
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text("Available Hotels",style: TextStyle(
                  fontFamily: ' PSemiBolds',
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Icon(Icons.tune)
              ],
            ),
            SizedBox(height: 10,),
            ///second
            Container(
              width: double.infinity,
              height: 60,
              decoration:  BoxDecoration(
                color: ColorConstant.grey,
                borderRadius:BorderRadius.circular(12) 
              ),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey
                      ),
                      child: Icon(Icons.search_rounded),
                      
                    ),
                    // SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Puri"),
                        Text("jun 01- 05 2025 Guest & Room 01 ")
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey
                      ),
                      child: Icon(Icons.edit),

                    ),
                  ],
                )
              ],
            ),
            ),
            SizedBox(height: 10,),
            SizedBox(height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorConstant.grey
                    ),child: Center(child: Text(filters[index],textAlign: TextAlign.center,)),
                  ),
                );
              },),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: hotelsDetels.length,
                itemBuilder: (context, index){
                var hotel=hotelsDetels[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // width: double.infinity,
                    height: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstant.grey
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: NetworkImage(hotel['img']),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15),
                                  color: Colors.green,
                                ),
                              ),
                              Positioned(
                                  left: 10,top: 10,
                                  child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(10),
                                  color: Colors.red
                                ),
                                child: Center(
                                  child: Text(hotel['offer'],style: TextStyle(
                                    fontFamily: 'PMediums',
                                    color: ColorConstant.white
                                  ),),
                                ),
                              ))
                            ],
                          ),
                        ),
                        /// all list in the hotels
                        Expanded(
                          flex: 1,
                          child: InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>HotelDetails( hotel:hotel),));
                          },
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 8,
                                    top: 15,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(hotel['title'],style: TextStyle(
                                          fontFamily: 'PSemiBolds',
                                          fontSize:14

                                        ),),
                                        Row(
                                          children: [
                                            Icon(Icons.location_on,size: 15),
                                            Text(hotel['location'],style: TextStyle(
                                              fontSize: 10
                                            ),)
                                          ],
                                        )

                                      ],
                                    )),

                                Positioned(
                                    right: 2,
                                    top: 2,
                                    child: Card(
                                      child: Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.yellow,),
                                          Text(hotel['rating'],style: TextStyle(
                                              fontSize:14
                                          ),)
                                        ],
                                      ),
                                    )),

                                Positioned(
                                    left: 8,
                                    top: 80,
                                    child: Column(
                                      children: [
                                        Text(hotel['price']??'N/A',
                                          style: TextStyle(
                                            fontFamily: 'PSemiBolds',
                                            fontSize:12
                                        ),)
                                      ],
                                    )),
                                Positioned(
                                    left: 8,
                                    bottom: 25,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                       SizedBox(
                                         height: 20,
                                         width: 250,
                                         child: ListView.builder(
                                           scrollDirection: Axis.horizontal,
                                           itemCount: hotel['amenities'].length,
                                           itemBuilder: (context, index) {
                                           return Padding(
                                             padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                             child: Container(
                                               height: 20,
                                               decoration: BoxDecoration(
                                                 color: Colors.white
                                               ),
                                               child: Text(hotel['amenities'][index]),
                                             ),
                                           );
                                         },),
                                       )
                                      ],
                                    )
                                ),

                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                );
              },),
            )
          ],
        ),
      )),
    );
  }
}
