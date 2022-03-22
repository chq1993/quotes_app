
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/quote.dart';
import 'package:quotes_app/quote_card.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Quang', text: 'Hiện tại anh đang để xuất theo tháng có được không?'),
    Quote(author: 'Quang2', text: 'Xuất theo tháng cũng được nhưng mà lại phải kiểm tra đi kiểm tra lại 12 lần'),
    Quote(author: 'Quang2', text: 'Xuất theo tháng cũng được nhưng mà lại phải kiểm tra đi kiểm tra lại 12 lần'),
    Quote(author: 'Quang3', text: 'Vậy cũng được, chứ hệ thống không chạy được hết tất cả như thế')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(quote.text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue[600]),
            ),
            SizedBox(height: 9.0),
            Text(quote.author,
            style: TextStyle(fontSize: 16.0, color: Colors.blue[800]),
            ),
            SizedBox(height: 8.0)
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Center(
          child: Text('Awesome Quotes',
          style: TextStyle(fontSize: 24.0,
          )),
        ),
      ),
      body: Column(
        children:
        quotes.map((e) => QuoteCard(
            quote: e,
          delete:(){
          setState(() {
            quotes.remove(e);
          });
          }
        )).toList()
      ),
    );
  }
}


