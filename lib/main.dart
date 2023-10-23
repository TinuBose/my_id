import 'package:flutter/material.dart';

import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<quote> quotes = [
    quote(author: 'tinu', text: 'you dont deserves me'),
    quote(author: 'bose', text: 'you dont deserves'),
    quote(author: 'thomas', text: 'you dont'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text('${quote.text} - ${quote.author}');
        }).toList(),
      ),
    );
  }
}
