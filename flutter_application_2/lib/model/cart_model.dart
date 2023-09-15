import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    // [ imagePath, itemButton, color ]
    ["lib/images/technology.jpg", "choose", Colors.greenAccent],
    ["lib/images/furniture.jpg", "choose", Colors.greenAccent],
    ["lib/images/clothes.jpg", "choose", Color.fromRGBO(105, 240, 174, 1)],
    ["lib/images/others.jpg", "choose", Colors.greenAccent],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add Item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove Item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();

    // calculate total price
    // ignore: unused_element
    String calculateTotla() {
      double totalPrice = 0;
      for (int i = 0; i < cartItems.length; i++) {
        totalPrice += double.parse(_cartItems[i][1]);
      }
      return totalPrice.toStringAsFixed(2);
    }
  }

  String calculateTotal() {}
}
