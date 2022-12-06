import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete; //you can use voidCallBack instead
  const QuoteCard({super.key, required this.quote, required this.delete});

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
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  delete();
                },
                icon: const Icon(Icons.delete_forever),
                label: const Text('Delete Quote'))
          ],
        ),
      ),
    );
  }
}
