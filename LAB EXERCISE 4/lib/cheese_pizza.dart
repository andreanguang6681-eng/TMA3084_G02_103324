import 'package:flutter/material.dart';

class CheesePizzaScreen extends StatelessWidget {
  const CheesePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cheese Pizza'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pizza_2.png',
                height: 250,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 15),
              const Text(
                'Cheese Pizza',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'A classic pizza topped with rich tomato sauce '
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
                  '• Italian herbs\n'
                  '• Olive oil',
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
