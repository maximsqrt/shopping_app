import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_provider.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_product_provider.dart';

import 'package:shoooooping_provider_app/features/shopping_main/shopping_main_screen.dart';

void main() {
  runApp(
     MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => CartProvider()),
      ChangeNotifierProvider(create: (context) => ProductProvider()),
    ], 
    child: ShopApp(),
      
      ),
  
  );
  
}

class ShopApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:ShoppingMainScreen(),
    );
  }
}