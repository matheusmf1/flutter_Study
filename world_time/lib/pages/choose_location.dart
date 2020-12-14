import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  void getData() async {

    // let's simulate network request for a userName

    // Future is like Promises
    String username = await Future.delayed( Duration( seconds: 3 ), () {

      return 'Matheus';
    });

    String userBio = await Future.delayed( Duration( seconds: 2 ), () {

      return 'Oiii';
    });

    print('${username} - ${userBio}');

  }

  @override
  void initState() {
    super.initState();

    getData();
    print('Init State');
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    print('Build State');
    return Scaffold(

      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text( 'Choose a location' ),
        centerTitle: true,
        elevation: 0,
      ),

      body: RaisedButton(

        onPressed: () {

          setState( () {

            i+=1;

          });

        },
        child: Text( 'Counter ${i}' ),

      ),
    );
  }
}
