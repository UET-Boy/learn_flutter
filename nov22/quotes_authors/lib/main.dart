import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: DartApp(),
  ));
}

class DartApp extends StatefulWidget {
  const DartApp({super.key});

  @override
  State<DartApp> createState() => _DartAppState();
}

class _DartAppState extends State<DartApp> {
  List<Quote> quotes = [
    Quote(text: 'Do Good, Have Good.', author: 'Hamza'),
    Quote(text: 'Learn a new language', author: 'Halal'),
    Quote(text: 'Something is better', author: 'Stupid')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
          backgroundColor: Colors.grey[700],
          centerTitle: true,
          title: const Text(
            'Best Quotes',
            style: TextStyle(fontFamily: 'Pacifico', fontSize: 30),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: quotes.map((quote) {
              return Text(
                '${quote.text} --- ${quote.author}',
                style: TextStyle(
                    backgroundColor: Colors.yellowAccent[200],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
