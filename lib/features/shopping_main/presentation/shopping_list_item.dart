import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/colors.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_provider.dart';
import 'package:shoooooping_provider_app/features/shopping_details/shopping_details_screen.dart';

class ShoppingListItem extends StatelessWidget {
  final Product product;

  const ShoppingListItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name,
      style: const TextStyle(color: TextcolorZ.color1,
      fontWeight: FontWeight.bold,
      ),
      ),
      subtitle: Text(product.description,
      style: const TextStyle(color: TextcolorZ2.color2,
      
      ),),
      trailing: IconButton(
        icon: const Icon(
        
        Icons.add_shopping_cart_sharp,
        color: Colors.white),
        onPressed: () {
          CartProvider cartProvider = context.read<CartProvider>(); // Zugriff auf den CartProvider über Provider
          cartProvider.addProduct(product);
        },
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShoppingDetailsScreen(product: product)),
        );
      },
    );
  }
}
