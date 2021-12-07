import 'package:avrin/screens/common_pizzas.dart';
import 'package:avrin/screens/pizza_categories.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PizzaCategories(
            key: key,
          ),
          CommonPizzas()
        ],
      ),
    );
  }
}
