
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:study00/constans.dart';

void main() => runApp( MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData (
    primarySwatch: Colors.blue,
  ),
));


class Home extends StatelessWidget {
  // A Stateless widget cannot change overTime, it can contains data, but it's defined just once
  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar (
        title: Text('My First App'),
        centerTitle: true,
      ),
      backgroundColor: Colors.indigoAccent,
      body: GestureDetector(
        child: Image(
          image: NetworkImage( urlPokemonBuilder( Random().nextInt(800) ) ),
        ),
        onTap: () => { print('Hi there image') },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => { print('Hi there') },
          child: Text('click')
      ),
    );
  }
}
