import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thalassophilecoffe/components/coffee_tile.dart';
import 'package:thalassophilecoffe/components/custom_scaffold.dart';
import 'package:thalassophilecoffe/config/app_strings.dart';
import 'package:thalassophilecoffe/config/app_styles.dart';
import 'package:thalassophilecoffe/models/coffe_product_model.dart';
import 'package:thalassophilecoffe/riverpod/riverpod_manager.dart';

class ShopView extends ConsumerWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var coffeeDatabase = ref.watch(coffeeShopData);

    void addToCart(Coffee coffee) {
      coffeeDatabase.addItemToCard(coffee);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text("${coffee.name} ${AppStrings.addedMessages}")));
    }

    return MyScaffold(
      title: AppStrings.coffeeShopBanner,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: coffeeDatabase.coffeeShop.length,
                itemBuilder: (context, index) {
                  var coffee = coffeeDatabase.coffeeShop[index];
                  return CoffeeTitle(
                    coffee: coffee,
                    onTap: () {
                      addToCart(coffee);
                    },
                    icon: Icons.shopping_basket_outlined,
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
