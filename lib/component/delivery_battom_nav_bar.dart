import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 14),
      decoration: const BoxDecoration(
        color: Colors.white,  // Background color to match your GNav or surrounding widget
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0)),
      ),
      padding: const EdgeInsets.all(5),
      child: const GNav(
        color: Colors.grey,
        activeColor: Colors.purple,
        tabBackgroundColor: Colors.grey,
        padding: EdgeInsets.all(5),
        tabs: [
          GButton(icon: LineIcons.search,
              text: 'Search'),
          GButton(icon: LineIcons.map,
              text: 'Map'),
          GButton(icon: LineIcons.shoppingBag,
              text: 'Shopping'),
          GButton(icon: LineIcons.user,
              text: 'User'),
        ],
      ),
    );
  }
}