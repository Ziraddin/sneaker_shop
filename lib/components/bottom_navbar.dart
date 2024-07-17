import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavbar extends StatelessWidget {
  final void Function(int) onTabChange;
  int selectedIndex = 0;
  MyBottomNavbar(
      {super.key, required this.onTabChange, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: GNav(
        onTabChange: (value) => onTabChange(value),
        selectedIndex: selectedIndex,
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        tabBackgroundColor: Colors.grey.shade900,
        activeColor: Colors.white,
        tabBorderRadius: 16,
        gap: 12,
        tabs: const [
          GButton(
            icon: Icons.home_filled,
            text: "Home",
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: "Shop",
          ),
        ],
      ),
    );
  }
}
