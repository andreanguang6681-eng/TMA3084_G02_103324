import 'package:flutter/material.dart';

import 'menu.dart';
import 'vegetable_pizza.dart';
import 'cheese_pizza.dart';
import 'fries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Android ATC Pizza Place',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const MenuScreen(),
      routes: {
        '/menu': (context) => const MenuScreen(),
        '/vegetable': (context) => const VegetablePizzaScreen(),
        '/cheese': (context) => const CheesePizzaScreen(),
        '/fries': (context) => const FriesScreen(),
      },
    );
  }
}
