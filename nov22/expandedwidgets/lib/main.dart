import 'package:flutter/material.dart';

void main() {
  runApp(const BringApp());
}

class BringApp extends StatelessWidget {
  const BringApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Generation App', home: SingAlong());
  }
}

class SingAlong extends StatelessWidget {
  const SingAlong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mailing App'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.red,
              child: const Text('Order Now'),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.yellow,
              child: const Text('Add to Cart'),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green,
              child: const Text('Get Directions'),
            ),
          )
        ],
      ),
    );
  }
}
