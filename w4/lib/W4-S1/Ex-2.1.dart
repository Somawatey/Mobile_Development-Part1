import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pruducts'),
        ),
        backgroundColor: Colors.blue,
        body: Padding(padding: EdgeInsets.all(20),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [          
            Card(
              child:Padding(padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/dart.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Dart',style: TextStyle(color: Colors.blue,fontSize: 30),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('the best object language')
                ],
              ),
            ),
            ),
            Card(
              child:Padding(padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/flutter.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Flutter',style: TextStyle(color: Colors.blue,fontSize: 30),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('the best mobile widget library'),
                ],
              ),
            ),
            ),
            Card(
              child:Padding(padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/firebase.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Flutter',style: TextStyle(color: Colors.blue,fontSize: 30),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('the best cloud database'),
                ],
              ),
            ),
            )
          ],
        ),),
      ),

  ));
}
