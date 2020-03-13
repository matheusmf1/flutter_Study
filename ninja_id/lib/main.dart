import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  home: MyCard(),
  debugShowCheckedModeBanner: false,

));


class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  // defines data that will be modified

  int ninjaLevel = 0;


  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text('Ninja Id'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
//          ninjaLevel++; // just this won't update the counter, to update the Widget we have to use setState
          setState( () {
            ninjaLevel+= 1;
          });

          },
        child: Icon( Icons.add ),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB( 30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/ninja.png"),
                radius: 40.0,
              ),
            ),

            Divider(
              height: 68.0,
              color: Colors.grey[800],
            ),

            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              ),
            ),
            SizedBox( height: 7.75 ), // it put a space between the contents
            Text(
              'Matheus',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox( height: 7.75 ), // it put a space between the contents,

            Text(
              'Current Ninja Level',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox( height: 7.75 ), // it put a space between the contents
            Text(
              '${ninjaLevel}',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox( height: 15.0 ), // it put a space between the contents

            Row(
              children: <Widget>[
                Icon( Icons.email, color: Colors.grey[400] ),
                SizedBox( width: 10.0, ),
                Text( 'matheus.test@gmail.com',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),
                )
              ],
            ),
          ],
      ),

      ),
    );
  }
}