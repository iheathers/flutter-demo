import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';
import 'package:quotes/quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text:
            "I did it for me. I liked it. I was good at it. And, I was really…I was alive.",
        author: "Mr.White"),
    Quote(text: "I AM THE ONE WHO KNOCKS.", author: "Heisenberg"),
    Quote(
        text: "In the end, love is a good reason for everything to fall apart.",
        author: "Tokyo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
          );
        }).toList(),
      ),
    );
  }
}
