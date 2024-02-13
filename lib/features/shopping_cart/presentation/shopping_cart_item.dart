import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Importiere Provider
import 'package:shoooooping_provider_app/common/colors.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_provider.dart';

class ShoppingCartItem extends StatelessWidget {
  final Product product;
  const ShoppingCartItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name,
      style: const TextStyle(color:TextcolorZ.color1),),
      subtitle: Text(product.description,
      style: const TextStyle(color:TextcolorZ2.color2),),
      trailing: IconButton(
        icon: const Icon(Icons.remove_shopping_cart,
        color: Colors.white,),
        onPressed: () {
          final cartProvider = Provider.of<CartProvider>(context, listen: false);
          cartProvider.removeProduct(product);
        },
      ),
    );
  }
}
