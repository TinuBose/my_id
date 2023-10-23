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
    quote(author: '-tinu', text: 'you dont deserves me'),
    quote(author: '-bose', text: 'you dont deserves'),
    quote(author: '-thomas', text: 'you dont'),
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
          return quoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              });
        }).toList(),
      ),
    );
  }
}

class quoteCard extends StatelessWidget {
  final Function delete;
  const quoteCard({
    super.key,
    required this.quote,
    required this.delete,
  });

  final quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            IconButton(
                onPressed: () {
                  delete();
                },
                icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
