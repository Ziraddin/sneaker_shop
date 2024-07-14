import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartTile extends StatefulWidget {
  final Shoe shoe;
  const CartTile({super.key, required this.shoe});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text("\$${widget.shoe.price}"),
        trailing: IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            Provider.of<Cart>(context, listen: false)
                .removeShoeFromCart(shoe: widget.shoe);
          },
        ),
      ),
    );
  }
}
