import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String imaagePath;
  final String itemButton;
  final Color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.imaagePath,
    required this.itemButton,
    required this.Color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Image.asset(
              imaagePath,
              height: 65,
            ),

            //button
            MaterialButton(
              onPressed: onPressed,
              color: Color[800],
              child: Text(
                '\$' + itemButton,
                style: TextStyle(
                    color: Colors.greenAccent, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
