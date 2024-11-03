import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My Hobbies'),
      ),
      backgroundColor: Colors.grey,
      body: Padding(padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Center(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.travel_explore),
                  ),
                  Text('Travelling'),
                ],
              ),
            ),
          ),
          Container(
           margin: EdgeInsets.fromLTRB(0,10,0,40),
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Center(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.skateboarding),
                  ),
                  Text('Skating'),
                ],
              ),
            ),
          ),
          
        ],
      ),
      ),
    ),
  ));
}
