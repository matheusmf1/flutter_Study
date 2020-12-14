import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard( { this.quote, this.delete } );

  @override
  Widget build( BuildContext context ) {
    return Card(
      margin: EdgeInsets.fromLTRB( 16.0, 16.0, 16.0, 0.0),

      child: Padding(

        padding: const EdgeInsets.all(10.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Text( quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),

            SizedBox( height: 6.0 ),

            Text( quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox( height: 8.0 ),


            // To delete the data defined outside this widget we do it in a multiple ways, here we gonna pass a function as a parameter to this class
            FlatButton.icon(
                onPressed: delete, //we're passing the delete function as a parameter
                icon: Icon( Icons.delete ),
                label:  Text('delete quote')
            )
          ],
        ),
      ),
    );
  }

}