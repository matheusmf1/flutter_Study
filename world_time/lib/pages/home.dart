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
          child: Text('Home Screen')

      ),

    );
  }
}
