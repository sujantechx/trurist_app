import 'package:flutter/material.dart';
import 'package:travel_genie/widgets/helper/colors.dart';
class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image:DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/467031976/photo/jagannath-temple-in-puri-orissa-india.jpg?s=2048x2048&w=is&k=20&c=QKU8yEwtGjV3NzJybe6-S2cso6LcyiUAOQXvjKw1z9A="),fit: BoxFit.cover)
              ),
            ),

            Positioned(
                bottom: 20,
                left: 20,right: 20,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorConstant.black.withOpacity(0.3)
                    ),
                    child: Text(
                  "The Jagannath Temple in Puri, Odisha, is one of the most sacred Hindu temples dedicated to Lord Jagannath, a form of Lord Vishnu. Built in the 12th century by King Anantavarman Chodaganga Deva, the temple is a prime example of Kalinga architecture with its towering spire and intricate carvings. It is one of the four Char Dham pilgrimage sites, making it spiritually significant for millions of devotees. The temple is famous for the annual Rath Yatra or Chariot Festival, where the deities Jagannath, Balabhadra, and Subhadra are taken out in grand processions. A unique feature of the temple is that the idols are made of neem wood and are ritually replaced every 12 to 19 years, a process known as Navakalevara. Several mysteries surround the temple, such as the flag on the temple always flying against the wind and the absence of the sea's sound inside the premises. The temple’s kitchen is considered the world’s largest, where food is cooked in clay pots stacked on top of each other, and miraculously, the top pot gets cooked first. Non-Hindus are not permitted to enter the temple, adding to its sacred exclusivity.",
                  textAlign: TextAlign.justify,
                  style:TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ) ,
                                ),
                              ),
                ))
          ],
        ),
      ),
    );
  }
}
