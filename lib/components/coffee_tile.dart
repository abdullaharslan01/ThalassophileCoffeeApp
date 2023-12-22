import 'package:flutter/material.dart';
import 'package:thalassophilecoffe/config/app_colors.dart';
import 'package:thalassophilecoffe/models/coffe_product_model.dart';

class CoffeeTitle extends StatelessWidget {
  const CoffeeTitle(
      {super.key,
      required this.coffee,
      required this.onTap,
      required this.icon});
  final Coffee coffee;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.listTileBackground,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(onPressed: onTap, icon: Icon(icon)),
      ),
    );
  }
}
