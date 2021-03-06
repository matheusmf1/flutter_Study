import 'package:flutter/material.dart';
import 'package:quotes/quoteCard.dart';
import 'package:quotes/quote.dart';

void main() => runApp( MaterialApp(
  home: QuoteList(),
  debugShowCheckedModeBanner: false,
) );


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote( author: 'Matheus', text: 'This is the first quote' ),
    Quote( author: 'Matheus', text: 'This is the second quote' ),
    Quote( author: 'Matheus', text: 'This is another quote very creative' ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text('Cool Stuff'),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
      ),

      body: Column(
        children:  quotes.map( ( quote ) => QuoteCard(

          quote: quote,
          delete: () {

            setState( () {
              quotes.remove( quote );
            });

          }

        ) ).toList(),
        // the map cycle for each value and performs it a function

      ),
    );
  }
}
