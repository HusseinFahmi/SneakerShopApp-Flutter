import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class ShoeTittle extends StatelessWidget {
  ShoeTittle({super.key, required this.shoe});

  Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(children: [Image.asset(shoe.imagePath)]),
    );
  }
}
