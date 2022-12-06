import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList(), //redundant func in comment above
          ),
        ),
      ),
    );
  }
}
