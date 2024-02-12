import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';

class ShoppingDetailsScreen extends StatelessWidget {
  final Product product;
  const ShoppingDetailsScreen({required this.product, Key? key}) : super(key: key)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoooooping Detail'),
      ),
      body: const Center(child: Text("Product Details")),
    );
  }
}
