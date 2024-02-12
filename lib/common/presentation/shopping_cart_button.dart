import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_provider.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Zugriff auf die Instanz des CartProviders
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Stack(
      children: [
        IconButton(
            icon: const Icon(Icons.shopping_cart_sharp), onPressed: () {}),
         Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 10,
            child: Text(
              '${cartProvider.privateList.length}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
