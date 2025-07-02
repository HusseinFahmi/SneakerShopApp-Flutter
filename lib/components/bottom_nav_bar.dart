import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      child: GNav(
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,

        onTabChange: onTabChange,
        tabs: [
          GButton(icon: Icons.home, gap: 10, text: 'shop'),
          GButton(icon: Icons.shopping_bag_rounded, gap: 10, text: 'cart'),
        ],
      ),
    );
  }
}
