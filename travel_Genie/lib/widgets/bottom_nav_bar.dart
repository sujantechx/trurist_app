import 'package:flutter/material.dart';
import 'package:travel_genie/Screen/booking/hotels/hotels_book.dart';
import 'package:travel_genie/Screen/home/home_Screen.dart';
import 'package:travel_genie/Screen/post/post.dart';
import 'package:travel_genie/Screen/profile/profile.dart';
import 'package:travel_genie/widgets/helper/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex=0;
  final List<Widget> _pages=[
    HomeScreen(),
    HotelsBook(),
    Post(),
    Profile()
  ];
  final List<String> _title=[
    "Home",
    'Travel',
    'Post',
    "Profile"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0), // Outer padding
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20), // Rounded corners
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: ColorConstant.grey, // Custom background color
            selectedItemColor:  ColorConstant.skyBlue,
            unselectedItemColor: Colors.black,
            onTap: (index) => setState(() => currentIndex = index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.travel_explore), label: "Travel"),
              BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "Post"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );

  }
}
