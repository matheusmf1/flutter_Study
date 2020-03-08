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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5.0),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('test01'),
                  RaisedButton(
                    child: Text('click'),
                    color: Colors.indigo[200],
                    onPressed: () => { print('hi') },
                  ),
                  Container(
                    child: Text('Container'),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(15.0),

                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5.0),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('test01'),
                  RaisedButton(
                    child: Text('click'),
                    color: Colors.indigo[200],
                    onPressed: () => { print('hi') },
                  ),
                  Container(
                    child: Text('Container'),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(15.0),

                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5.0),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('test01'),
                  RaisedButton(
                    child: Text('click'),
                    color: Colors.indigo[200],
                    onPressed: () => { print('hi') },
                  ),
                  Container(
                    child: Text('Container'),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(15.0),

                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5.0),
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('test01'),
                  RaisedButton(
                    child: Text('click'),
                    color: Colors.indigo[200],
                    onPressed: () => { print('hi') },
                  ),
                  Container(
                    child: Text('Container'),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(15.0),

                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
