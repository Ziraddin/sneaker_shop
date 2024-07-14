import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/cart_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late List<Shoe> userCart;
  @override
  Widget build(BuildContext context) {
    userCart = Provider.of<Cart>(context).userCart;
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "My Cart",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 30,
                left: 25,
                right: 25,
              ),
              itemBuilder: (context, index) {
                return CartTile(shoe: userCart[index]);
              },
              itemCount: userCart.length,
            ),
          ),
        ],
      ),
    );
  }
}
