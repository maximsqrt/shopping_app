import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/colors.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';

class ShoppingDetailsScreen extends StatelessWidget {
  final Product product;
  const ShoppingDetailsScreen({required this.product, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
      title: const Text('ShopApp',style: TextStyle(color: Colors.white)),
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
        body: 
           Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Product Name: ${product.name}',
                  style:  TextStyle(fontSize: 20,
                  color: TextcolorZ.color1,
                  
                  ),
                ),
                Text(
                  'Description: ${product.description}',
                  style: const TextStyle(fontSize: 16,color: TextcolorZ2.color2,
                ),
                ),
                Text(
                  'Price: \$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 16,color: TextcolorZ2.color2,),
                ),
                // Hier können weitere Details des Produkts angezeigt werden
              ],
            ),
          ),
        );
        
  }
}
