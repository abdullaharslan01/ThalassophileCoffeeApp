import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thalassophilecoffe/models/coffee_shop.dart';

final coffeeShopData = ChangeNotifierProvider((_) => CoffeeShop());
