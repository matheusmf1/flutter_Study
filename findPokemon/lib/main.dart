import 'dart:math';

import 'package:flutter/material.dart';
import 'package:findPokemon/constans.dart';

void main() => runApp( MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData (
    primarySwatch: Colors.blue,
  ),
));


class Home extends StatefulWidget {
  // A Stateless widget cannot change overTime, it can contains data, but it's defined just once
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pokemmonId = 25;

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
          image: NetworkImage( urlPokemonBuilder( _pokemmonId ) ),
        ),
        onTap: () {
          setState( () {
            _pokemmonId = Random().nextInt(799) + 1;
        });

          print("Id Pokemon: ${_pokemmonId }");
      },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => { print('Hi there') },
          child: Text('click')
      ),
    );
  }
}
