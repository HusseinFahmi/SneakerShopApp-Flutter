import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Force',
      price: '263',
      imagePath: 'assets/images/image1.png',
      description:
          "Classic leather sneaker with a clean look and all-day comfort",
    ),
    Shoe(
      name: 'Nike Air Max 270',
      price: '180',
      imagePath: 'assets/images/image1.png',
      description:
          "Sporty shoe with a large Air unit for extra cushioning and style",
    ),
    Shoe(
      name: 'Nike Dunk Low',
      price: '283',
      imagePath: 'assets/images/image1.png',
      description: "Retro design with bold colors, perfect for everyday wear",
    ),
    Shoe(
      name: 'Nike Pegasus 41',
      price: '168',
      imagePath: 'assets/images/image1.png',
      description:
          "Lightweight running shoe with great support and breathability",
    ),
    Shoe(
      name: 'Nike Zoom Freak 5',
      price: '189',
      imagePath: 'assets/images/image1.png',
      description: "Basketball shoe made for speed, power, and quick cuts",
    ),
    Shoe(
      name: "Nike Blazer Mid '77",
      price: '299',
      imagePath: 'assets/images/image1.png',
      description:
          "Vintage-inspired sneaker with a high-top design and durable feel",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get list of items in user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add shoe to user cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove shoe from user cart
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
