import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/colors.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_provider.dart';
import 'package:shoooooping_provider_app/features/shopping_cart/presentation/shopping_cart_item.dart';
import 'package:shoooooping_provider_app/main.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final cartItems = cartProvider.privateList;

    return AnimatedBackgroundContainer( // Wrap the entire body with AnimatedBackgroundContainer
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Cart Screen', style: TextStyle(color: Colors.white)),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                colors: [
                  CustomColors.color2,
                  CustomColors.color3,
                ],
              ),
            ),
          ),
        ),
        body: cartItems.isEmpty
            ? const Center(
                child: Text(
                  'No items in the cart',
                  style: TextStyle(fontSize: 24),
                ),
              )
            : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartItems[index];
                  return ShoppingCartItem(product: product);
                },
              ),
      ),
    );
  }
}
