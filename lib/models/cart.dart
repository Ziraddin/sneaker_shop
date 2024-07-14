import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  final List<Shoe> _userCart = [];

  List<Shoe> get userCart {
    return _userCart;
  }

  void addShoeToCart({required Shoe shoe}) {
    if (!_userCart.contains(shoe)) {
      _userCart.add(shoe);
      notifyListeners();
    }
  }

  void removeShoeFromCart({required Shoe shoe}) {
    _userCart.remove(shoe);
    notifyListeners();
  }
}
