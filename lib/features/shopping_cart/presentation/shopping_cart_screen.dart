import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool noProducts = true;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: noProducts
            ? const Center(
                child: Text('No items in the cart',
                    style: TextStyle(fontSize: 24)),
              )
             // ignore: dead_code
             : const Text("Shopping Items"));
  }
}
