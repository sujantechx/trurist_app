import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';

class Recipt extends StatefulWidget {
  const Recipt({super.key});

  @override
  State<Recipt> createState() => _ReciptState();
}

class _ReciptState extends State<Recipt> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      
      body: SafeArea(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(12),

              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstant.grey
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle,color: Colors.green,size: 150,),
                  SizedBox(height: 10,),
                  UiHelper.CustomTextRegular(textinput: 'Payment Successful!'),
                  SizedBox(height: 30,),

                  Container(
                    // margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(12),
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration( borderRadius: BorderRadius.circular(12),
                    color: ColorConstant.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Text("Hotel Booked",style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'PSemiBolds'
                       ),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Icon(Icons.mail,size: 18,),
                            SizedBox(width: 10,),
                            
                            Text("You can  find you Hotels in Your mail")

                          ],
                        ),
                        SizedBox(height: 10,),

                        DottedLine(
                          direction: Axis.horizontal,
                          dashLength: 8,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Date \n Jun 20 25"),
                            Text("Reference Id \n @sbi359"),
                            Text("Note\n Hotel")

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),

                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.save_alt),
                      SizedBox(width: 10,),

                      Text("Download receipt",style: TextStyle(
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'PSemiBolds'
                      ),),
                    ],
                  ),
                  SizedBox(width: 30,),

                  Container(
                    height: 60,width: 60,
                    color: Colors.white,
                    child: Text("QR "),
                  )
                ],
              ),

                  ),
          )),
    );
  }
}
