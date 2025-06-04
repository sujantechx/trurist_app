import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/recipt.dart';
import 'package:travel_genie/widgets/helper/uihelper.dart';

import '../../widgets/helper/colors.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final List<Map<String, dynamic>> paymentMethods = [
    {
      'title': 'UPI',
      'icon': Icons.account_balance_wallet,
    },
    {
      'title': 'Credit / Debit Card',
      'icon': Icons.credit_card,
    },
    {
      'title': 'Net Banking',
      'icon': Icons.account_balance,
    },
    {
      'title': 'Cash on Delivery',
      'icon': Icons.money,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Payment"),
      ),
      
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UiHelper.CustomTextRegular(textinput: 'Selected Pay option'),

                  SizedBox(
                    height:600,
                    child: ListView.builder(
                      itemCount:paymentMethods.length,
                      itemBuilder: (context, index) {
                        var payop=paymentMethods[index];
                      return Container(
                        margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(12),

                        child: Row(

                          children: [
                            Icon(payop['icon']),
                            SizedBox(width: 20,),
                            Text(payop['title'])
                          ],
                        ),
                      );
                    },),
                  )
                ],
              ),
            ),
        
            Positioned(
              right: 10,left: 10,
              bottom: 20,
                child:
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Recipt(),));
                      }, buttonName: 'Proceed')
                    ],
                  ),
        
                ),
            )
          ],
        ),
      ),
    );
  }
}
