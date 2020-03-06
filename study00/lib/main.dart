
import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  // A Stateless widget cannot change overTime, it can contains data, but its
  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hi there',
          style: TextStyle(
              fontSize: 20,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => { print('pressed') },
          child: Text('click')
      ),
    );
  }
}
