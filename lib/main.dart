import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'you dont deserves me',
    'you dont deserves my vibe',
    'you dont deserves what i\'ll become'
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
          return Text(quote);
        }).toList(),
      ),
    );
  }
}
