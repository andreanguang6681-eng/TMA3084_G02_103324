import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android ATC Pizza Place'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/vegetable');
            },
            child: Card(
              color: Colors.orange,
              child: const ListTile(title: Text('Vegetable Pizza')),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/cheese');
            },
            child: Card(
              color: Colors.orange,
              child: const ListTile(title: Text('Cheese Pizza')),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/fries');
            },
            child: Card(
              color: Colors.orange,
              child: const ListTile(title: Text('Fries')),
            ),
          ),
        ],
      ),
    );
  }
}
