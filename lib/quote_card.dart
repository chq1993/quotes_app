import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 3, 12, 0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text(quote.text.toString()),
                subtitle: Text(quote.author.toString()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('CKECK OUT'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton.icon(
                    onPressed: delete,
                    label: Text('Delete'),
                    icon: Icon(Icons.delete),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}