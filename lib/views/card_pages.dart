import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thalassophilecoffe/components/coffee_tile.dart';
import 'package:thalassophilecoffe/components/custom_scaffold.dart';
import 'package:thalassophilecoffe/config/app_strings.dart';
import 'package:thalassophilecoffe/config/app_styles.dart';
import 'package:thalassophilecoffe/models/coffe_product_model.dart';
import 'package:thalassophilecoffe/riverpod/riverpod_manager.dart';

class CardView extends ConsumerWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void payNow() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(AppStrings.paySuccess),
          actions: [
            ElevatedButton(
                onPressed: () {
                  ref.watch(coffeeShopData).clearCard();

                  Navigator.pop(context);
                },
                child: Text(AppStrings.okey)),
          ],
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text(AppStrings.paySuccessMessages)],
          ),
        ),
      );
    }

    var coffeeDatabase = ref.watch(coffeeShopData);

    void removeToCart(Coffee coffee) {
      coffeeDatabase.removeItemToCard(coffee);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text("${coffee.name} ${AppStrings.removeMessages}")));
    }

    return MyScaffold(
      title: AppStrings.coffeCardBanner,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: coffeeDatabase.userCart.length,
                itemBuilder: (context, index) {
                  var coffee = coffeeDatabase.userCart[index];
                  return CoffeeTitle(
                    icon: Icons.delete_outline,
                    coffee: coffee,
                    onTap: () {
                      removeToCart(coffee);
                    },
                  );
                },
              )),
              GestureDetector(
                onTap: () {
                  payNow();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text(
                    AppStrings.paynow,
                    style: AppStyles.payNow,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
