import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/appbar.dart';
import 'package:shoooooping_provider_app/common/colors.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_cart_button.dart';
import 'package:shoooooping_provider_app/common/presentation/shopping_product_provider.dart';
import 'package:shoooooping_provider_app/main.dart';

class ShoppingMainScreen extends StatelessWidget {
  const ShoppingMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      title: Text('ShopApp'),
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
        actions: [
          ShoppingCartButton(),
        ],
        ),
      body: Column(
        children: [ 
          Expanded(
            child: Consumer<ProductProvider>(
              builder: (context, productProvider, _) {
                return ListView.builder(
                  itemCount: productProvider.products.length,
                  itemBuilder: (context, index) {
                    final product = productProvider.products[index];
                    return ListTile(
                      title: Text(product.name),
                      subtitle: Text(product.description),
                      leading: const Icon(Icons.shopping_cart),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      
    );
  }
}