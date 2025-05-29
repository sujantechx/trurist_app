import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/profile/profile.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile(),));
                    },
                    child: Container(
                        height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                            color: ColorConstant.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.arrow_back_ios)),

                  ),
                  Text("Edit Profile",style: TextStyle(
                    fontSize:18 ,
                    fontWeight: FontWeight.bold
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile(),));
                    },
                    child: Container(
                      height: 25,
                        width: 30,
                        decoration: BoxDecoration(
                          color: ColorConstant.grey,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.check)),

                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 750,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorConstant.grey,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Center(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(image: AssetImage('assets/images/sujan.jpg'),fit: BoxFit.cover)
                            ) ,
                            child: Stack(
                              children: [Positioned(child: Icon(Icons.camera_alt_outlined))],
                            ),
                          ),
                        ),
                        ///text part
                        SizedBox(height: 15,),
                        UiHelper.CustomTextRegular(textinput: "Name"),
                        SizedBox(height: 15,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ColorConstant.white
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
                        SizedBox(height: 15,),

                        ///email
                        UiHelper.CustomTextRegular(textinput: "E-mail"),
                        SizedBox(height: 10,),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.white
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
                        SizedBox(height: 15,),

                        /// Mobile no
                        UiHelper.CustomTextRegular(textinput: "Mobile No"),
                        SizedBox(height: 15,),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.white
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
                        SizedBox(height: 15,),

                        /// adresh
                        UiHelper.CustomTextRegular(textinput: "Address"),
                        SizedBox(height: 20,),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstant.white
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
                        SizedBox(height: 15,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  UiHelper.CustomTextRegular(textinput: "City"),
                                  SizedBox(height: 20,),
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: ColorConstant.white
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
                                  SizedBox(height: 15,),
                                  UiHelper.CustomTextRegular(textinput: "Country"),
                                  SizedBox(height: 20,),
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: ColorConstant.white
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
                                  SizedBox(height: 15,),
                                ],
                              ),
                              Column(
                                children: [
                                  UiHelper.CustomTextRegular(textinput: "State"),
                                  SizedBox(height: 20,),
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: ColorConstant.white
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
                                  SizedBox(height: 15,),
                                  UiHelper.CustomTextRegular(textinput: "Pin cod"),
                                  SizedBox(height: 20,),
                                  Container(
                                      padding: EdgeInsets.symmetric(horizontal: 10),
                                      width: 150,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: ColorConstant.white
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
                                  SizedBox(height: 15,),
                                ],
                              )
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
        ),
      ),
    );
  }
}
