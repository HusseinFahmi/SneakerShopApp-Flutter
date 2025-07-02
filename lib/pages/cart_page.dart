import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

import '../components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteShoeFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeFromCart(shoe);

    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(title: Text('Successfully remove from cart')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCart()[index];
                  return CartItem(
                    shoe: individualShoe,
                    onPressed: () => deleteShoeFromCart(individualShoe),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
