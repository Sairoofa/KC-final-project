import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/cart_model.dart';
import 'package:flutter_application_2/pages/cart_page.dart';
import 'package:flutter_application_2/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return changeNotifierProvider(
        create: (context) => CartModel(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: intropage(),
        ));
  }

  changeNotifierProvider(
      {required Function(dynamic context) create,
      required MaterialApp child}) {}
}
