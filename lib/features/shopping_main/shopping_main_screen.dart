import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_button.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_product_provider.dart';
import 'package:shoooooping_provider_app/features/shopping_main/presentation/shopping_list_item.dart';

class ShoppingMainScreen extends StatelessWidget {
  const ShoppingMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Expanded(
          child: Consumer<ProductProvider>(
            builder: (context, productProvider, _) {
              return ListView.builder(
                itemCount: productProvider.products.length,
                itemBuilder: (context, index) {
                  final product = productProvider.products[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ShoppingListItem(product: product),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
