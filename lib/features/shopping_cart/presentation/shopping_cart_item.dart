import 'package:flutter/material.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Product Name"),
      subtitle: const Text("Product Description"),
      trailing: IconButton(
        icon: const Icon(Icons.remove_shopping_cart),
        onPressed: () => {},
      ),
    );
  }
}
