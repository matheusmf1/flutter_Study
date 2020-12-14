import 'package:flutter/material.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';

void main() => runApp( MaterialApp(

    debugShowCheckedModeBanner: false,

    initialRoute: '/home', // we can override and say this is the initial route

    routes: {

        '/': ( context ) => Loading(), // by default this is first route
        '/home': ( context ) => Home(),
        '/location': ( context )=> ChooseLocation()

    }, // this is a Map. In dart a Map is like an object in Js or a dict in Python and it's used in the same way

) );
