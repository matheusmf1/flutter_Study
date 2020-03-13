import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  home: MyCard(),
  debugShowCheckedModeBanner: false,

));


class MyCard extends StatelessWidget {
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
              '8000',
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
