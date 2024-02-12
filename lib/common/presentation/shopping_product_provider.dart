

import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/common/shopping_helpers.dart';




class ProductProvider extends ChangeNotifier{
   final List<Product> _products = getDefaultProducts();


  //Konstruktor erstellen, der die Produkte lädt nicht notwendig? 
  //getter erstellen 
  List<Product> get products => _products;

  void addProduct(Product product){
    _products.add(product);
    notifyListeners();
  }
}
 
