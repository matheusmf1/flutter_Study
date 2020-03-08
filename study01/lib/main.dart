import 'package:flutter/material.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Study 01"),
        centerTitle: true,
      ),
      body: Container(
        // The container uses the space needed from it's child, it has margin and padding
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(20.0),
        color: Colors.grey[300],
        child: Text('Hi there'),

      ),
    );
  }
}
