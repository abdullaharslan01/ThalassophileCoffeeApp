import 'package:flutter/material.dart';
import 'package:thalassophilecoffe/components/drawer.dart';
import 'package:thalassophilecoffe/config/app_styles.dart';

class MyScaffold extends StatelessWidget implements PreferredSizeWidget {
  const MyScaffold(
      {super.key,
      required this.title,
      required this.body,
      this.bottomNavigationBar});
  final String title;
  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar,
      drawer: MyDrawer(),
      body: body,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          title,
          style: AppStyles.appBanner,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
