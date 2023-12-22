import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:thalassophilecoffe/config/app_strings.dart';

class MyBottomNavigationBar extends StatelessWidget {
  MyBottomNavigationBar({super.key, required this.onTapChanged});

  void Function(int)? onTapChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTapChanged!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: AppStrings.shop,
          ),
          GButton(
            icon: Icons.credit_card,
            text: AppStrings.cart,
          ),
        ],
      ),
    );
  }
}
