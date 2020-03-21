import 'package:flutter/material.dart';

// it's a Stateful Widget because we're going to deal with state

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea (
          child: Column(

            children: <Widget>[

              FlatButton.icon(
                  onPressed: () {

                   Navigator.pushNamed( context, '/location' ); // this is a func that push a new screen into the current one, it's a stack

                  }, icon: Icon( Icons.edit_location ), label: Text( 'Edit Location' ))

            ],
          )

      ),

    );
  }
}
