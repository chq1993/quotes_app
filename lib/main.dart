
import 'package:flutter/material.dart';

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

  List<String> quotes = [
    'Hiện tại anh đang để xuất theo tháng có được không?',
    'Xuất theo tháng cũng được nhưng mà lại phải kiểm tra đi kiểm tra lại 12 lần',
    'Vậy cũng được, chứ hệ thống không chạy được hết tất cả như thế'
  ];

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
        children: quotes.map((e) => Text(e)).toList(),
      ),
    );
  }
}
