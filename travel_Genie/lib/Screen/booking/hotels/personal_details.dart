import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/payment.dart';

import '../../../widgets/helper/colors.dart';
import '../../../widgets/helper/uihelper.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  var _noPeopleController=TextEditingController();
  var _nameController=TextEditingController();
  var _emailController=TextEditingController();
  var _phoneNumberController=TextEditingController();
  var _adressController=TextEditingController();
  var _cityController=TextEditingController();
  var _stateController=TextEditingController();
  var _countryController=TextEditingController();
  var _pinCodeController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 750,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstant.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("No of People",style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 15
                        ),),
                          Container(
                            color: ColorConstant.grey,
                            height: 30,
                            width: 130,
                            child: TextField(
                              controller: _noPeopleController,
                              decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none
                              ),
                            ),

                          )
                        ],
                      ),
                      ///text part
                      SizedBox(height: 10,),
                      UiHelper.CustomTextRegular(textinput: "Name"),
                      SizedBox(height: 10,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.grey
                          ),
                          child: TextField(
                            controller: _nameController,
                            decoration: InputDecoration(
                                hintText: '  Name',
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none
                              // focusedBorder: false,
                            ),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PMediums'
                          ),
                          )
                      ),
                      SizedBox(height: 10,),

                      ///email
                      UiHelper.CustomTextRegular(textinput: "E-mail"),
                      SizedBox(height: 10,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.grey
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                hintText: '  Email',
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none
                              // focusedBorder: false,
                            ),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PMediums'
                          ),
                          )
                      ),
                      SizedBox(height: 10,),

                      /// Mobile no
                      UiHelper.CustomTextRegular(textinput: "Mobile No"),
                      SizedBox(height: 10,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          height: 40,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.grey
                          ),
                          child: TextField(
                            controller: _phoneNumberController,
                            decoration: InputDecoration(
                                hintText: '  Phone Number',
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none
                              // focusedBorder: false,
                            ),style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'PMediums'
                          ),
                          )
                      ),
                      SizedBox(height: 10,),

                      /// adresh
                      UiHelper.CustomTextRegular(textinput: "Address"),
                      SizedBox(height: 10,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.grey
                          ),
                          child: TextField(
                            controller: _adressController,
                            decoration: InputDecoration(
                                hintText: '  Address',
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none
                              // focusedBorder: false,
                            ),textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PMediums'
                            ),
                          )
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                UiHelper.CustomTextRegular(textinput: "City"),
                                SizedBox(height: 5,),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.grey
                                    ),
                                    child: TextField(
                                      controller: _cityController,
                                      decoration: InputDecoration(
                                          hintText: '  City',
                                          border: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none
                                        // focusedBorder: false,
                                      ),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'PMediums'
                                    ),
                                    )
                                ),
                                SizedBox(height: 5,),
                                UiHelper.CustomTextRegular(textinput: "Country"),
                                SizedBox(height: 5,),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.grey
                                    ),
                                    child: TextField(
                                      controller: _countryController,
                                      decoration: InputDecoration(
                                          hintText: '  Country',
                                          border: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none
                                        // focusedBorder: false,
                                      ),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'PMediums'
                                    ),
                                    )
                                ),
                                SizedBox(height: 5,),
                              ],
                            ),
                            Column(
                              children: [
                                UiHelper.CustomTextRegular(textinput: "State"),
                                SizedBox(height: 5,),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.grey
                                    ),
                                    child: TextField(
                                      controller: _stateController,
                                      decoration: InputDecoration(
                                          hintText: '  State',
                                          border: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none
                                        // focusedBorder: false,
                                      ),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'PMediums'
                                    ),
                                    )
                                ),
                                SizedBox(height: 5,),
                                UiHelper.CustomTextRegular(textinput: "Pin cod"),
                                SizedBox(height: 5,),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ColorConstant.grey
                                    ),
                                    child: TextField(
                                      controller: _pinCodeController,
                                      decoration: InputDecoration(
                                          hintText: '  Pin cod',
                                          border: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none
                                        // focusedBorder: false,
                                      ),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'PMediums'
                                    ),
                                    )
                                ),
                                SizedBox(height: 5,),
                              ],
                            )
                          ],
                        ),
                      ),
                      UiHelper.CustomTextRegular(textinput: "Amenities"),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.grey
                          ),
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline_outlined),
                          Text( " I have reviewed above given details \n  and i accepted Terms and Condition")
                        ],
                      ),
                      SizedBox(height: 30,),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.grey
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Price ₹ 800"),
                                Text("Start from,Date")

                              ],
                            ),

                            UiHelper.CustomButtomFlex(callback: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Payment(),));
                            }, buttonName: 'Submit')
                          ],
                        ),

                      ),




                    ],
                  ),
                ),
              ),
            )


          ],
        ),
      )),
    );
  }
}
