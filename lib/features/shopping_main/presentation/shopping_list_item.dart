import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/features/shopping_details/shopping_details_screen.dart';

class ShoppingListItem extends StatelessWidget {

    final Product product;
    //final, da sich das Product nicht mehr ändern soll?
  const ShoppingListItem({required this.product, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(product.name),
      subtitle:  Text(product.description),
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart_sharp),
        onPressed: () => {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => ShoppingDetailsScreen(product : product)),
          ),
        },
      ),
      onTap: () {},
    );
  }
}
