import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoe(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addShoeToCart(shoe: shoe);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Successfully added!"),
          content: const Text("Check your cart"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Colors.white,
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.search)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "eceryone flies.. some fly longer than others",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
                Text(
                  "see all",
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView.builder(
              padding: const EdgeInsets.only(right: 25, bottom: 40),
              scrollDirection: Axis.horizontal,
              itemCount: shoes.length,
              itemBuilder: (context, index) {
                return ShoeTile(
                  shoe: shoes[index],
                  addShoe: addShoe,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
