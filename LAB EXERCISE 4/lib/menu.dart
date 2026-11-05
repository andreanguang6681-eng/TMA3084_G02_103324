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
              child: ListTile(
                leading: Image.asset('assets/images/pizza_1.png', width: 40, height: 40),
                title: const Text('Vegetable Pizza', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/cheese');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/pizza_2.png', width: 40, height: 40),
                title: const Text('Cheese Pizza', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/fries');
            },
            child: Card(
              color: Colors.orange,
              child: ListTile(
                leading: Image.asset('assets/images/fries.png', width: 40, height: 40),
                title: const Text('Box of Fries', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
