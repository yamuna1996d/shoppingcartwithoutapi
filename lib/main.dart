import 'package:flutter/material.dart';
import 'package:shopping_app/Views/Shopping_ui.dart';

void main() => runApp(Shop());

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}
