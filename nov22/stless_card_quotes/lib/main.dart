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
    Quote(text: 'Something is better', author: 'Stupid'),
    Quote(text: 'Look before you leap', author: 'Panda'),
    Quote(text: 'You die another day', author: 'James'),
    Quote(text: 'You belong to GOD', author: 'Satan')
  ];

//this function is redundant now, so deleting it
/*


  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[600],
          centerTitle: true,
          title: const Text(
            'Best Quotes',
            style: TextStyle(fontSize: 30),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes
                .map((quote) => QuoteCard(quote: quote))
                .toList(), //redundant func in comment above
          ),
        ),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  const QuoteCard({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[800], fontSize: 20),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(color: Colors.red[600], fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
