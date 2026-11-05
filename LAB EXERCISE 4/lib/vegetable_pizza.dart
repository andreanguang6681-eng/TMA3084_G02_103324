import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Pizza'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pizza_1.png',
                height: 250,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 15),
              const Text(
                'Vegetable Pizza',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'A delicious pizza topped with fresh vegetables '
                  'and melted mozzarella cheese.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Text(
                'Ingredients',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  '• Pizza dough\n'
                  '• Tomato sauce\n'
                  '• Mozzarella cheese\n'
                  '• Fresh tomatoes\n'
                  '• Mushrooms\n'
                  '• Green capsicum\n'
                  '• Onions',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
