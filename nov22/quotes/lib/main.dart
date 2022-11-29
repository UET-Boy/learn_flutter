import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Lists(),
  ));
}

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {
  List<String> sNames = [
    'Hamza',
    'Saad',
    'Zubair',
    'Sabih',
    'Faizan',
    'Awais',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Student List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sNames
              .map((fNames) => Text(
                    fNames,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
