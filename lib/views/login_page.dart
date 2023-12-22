import 'package:flutter/material.dart';
import 'package:thalassophilecoffe/components/custom_scaffold.dart';
import 'package:thalassophilecoffe/config/app_strings.dart';
import 'package:thalassophilecoffe/views/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _nameState();
}

class _nameState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.asset("assets/images/latte.png")),
                SizedBox(
                  height: 50,
                ),
                Text(
                  AppStrings.loginPageHeaderTitle,
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  AppStrings.loginPageBodyMessages,
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return MainPageView();
                      },
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                      child: Text(
                        AppStrings.loginPageEnterShop,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
