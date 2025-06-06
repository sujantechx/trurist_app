import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Help & Support",style: TextStyle(
            fontFamily: 'PSemiBolds'
          ),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Image(image: AssetImage('assets/icons/support.png'),width: 200,height: 200,),

                Text("Hello , How can we \n Help you?",textAlign: TextAlign.center,style: TextStyle(
                  fontFamily: 'PSemiBolds'
                ),),
                SizedBox(
                  height: 40,
                ),

                Container(
                  padding: EdgeInsets.all(12),
                  height: 200,
                  color: ColorConstant.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.headset_mic_outlined),
                          // SizedBox(width: 10,),
                          Text("Call us"),
                          SizedBox(width: 150,),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.chat),
                          // SizedBox(width: 10,),
                          Text("Live Chart"),
                          SizedBox(width: 150,),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.question_mark_rounded),
                          // SizedBox(width: 10,),
                          Text("FAQ's"),
                          SizedBox(width: 150,),
                          Icon(Icons.arrow_forward)
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      );
  }
}
