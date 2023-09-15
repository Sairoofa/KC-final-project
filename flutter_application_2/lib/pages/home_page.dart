import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/cart_model.dart';
import 'package:provider/provider.dart';
import '../componens/grocery_item_tile.dart';
import 'cart_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return CartPage();
                },
              )),
          backgroundColor: Colors.black,
          child: Icon(Icons.shopping_bag)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //لا ترمي القديم ...اجعل من يسعد به
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "لا ترمي القديم ...اجعل من يسعد به",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 24),

          //divier
          const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider()),

          const SizedBox(height: 24),

          //اقسام التبرع:+gird
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "اقسام التبرع:",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: (context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                padding: EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.3,
                ),
                itemBuilder: (context, index) {
                  return GroceryItemTile(
                    imaagePath: value.shopItems[index][0],
                    itemButton: value.shopItems[index][1],
                    Color: value.shopItems[index][2],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                    },
                  );
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
