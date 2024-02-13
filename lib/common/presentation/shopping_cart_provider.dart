
import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';

class CartProvider extends ChangeNotifier {

  final List<Product>  _privateList = [];
  //getter für die Private Liste 
  List<Product> get privateList => _privateList;


  //Methode fürs ListAdd
  void addProduct(Product product) {
    _privateList.add(product);
    notifyListeners();
  }
  //Methode fürs ListAdd
  void removeProduct(Product product) {
    _privateList.remove(product);
    notifyListeners();
  }
  }




///Der Getter privateList gibt die private Liste _privateList zurück. 
///Dies ermöglicht es anderen Teilen deines Codes, auf die Liste zuzugreifen, 
///ohne dass sie die private Variable direkt verwenden müssen.