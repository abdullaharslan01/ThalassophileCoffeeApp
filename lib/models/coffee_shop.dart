import 'package:flutter/material.dart';
import 'package:thalassophilecoffe/models/coffe_product_model.dart';

class CoffeeShop extends ChangeNotifier {
  // Our sales list
  final List<Coffee> _shop = [
    Coffee(
        name: "Espresso", price: "95", imagePath: "assets/images/espresso.png"),
    Coffee(
        name: "Hot Chocolate",
        price: "120",
        imagePath: "assets/images/hot-chocolate.png"),
    Coffee(
        name: "Ice Coffee",
        price: "75",
        imagePath: "assets/images/iced-coffee.png"),
    Coffee(name: "Latte", price: "110", imagePath: "assets/images/latte.png"),
  ];

  // User card
  List<Coffee> _userCart = [];

// get coffee list
  List<Coffee> get coffeeShop => _shop;

// get user list
  List<Coffee> get userCart => _userCart;

  // add coffee to shop
  void addItemToCard(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove coffee from shop
  void removeItemToCard(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }

  void clearCard() {
    _userCart.clear();
    notifyListeners();
  }
}
