import 'package:flutter/material.dart';
import 'package:thalassophilecoffe/components/bottom_navigation_bar.dart';
import 'package:thalassophilecoffe/components/custom_scaffold.dart';
import 'package:thalassophilecoffe/components/drawer.dart';
import 'package:thalassophilecoffe/views/card_pages.dart';
import 'package:thalassophilecoffe/views/shop_pages.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _nameState();
}

class _nameState extends State<MainPageView> {
  Menus menuIndex = Menus.home;

  void navigationMenuSelected(int index) {
    switch (index) {
      case 0:
        menuIndex = Menus.home;
        break;

      case 1:
        menuIndex = Menus.card;
        break;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MyBottomNavigationBar(
          onTapChanged: (selectedIndex) {
            navigationMenuSelected(selectedIndex);
          },
        ),
        body: pages[menuIndex.index]);
  }
}

enum Menus { home, card }

const List<Widget> pages = [ShopView(), CardView()];
