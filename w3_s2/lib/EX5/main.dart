import 'package:flutter/material.dart';

import 'CustomCard.dart';
// import 'package:w3_s2/EX5/CustomCard.dart';
void main() {
  runApp(MaterialApp(
    home: Container(
      color: Colors.grey,
      padding: const EdgeInsets.all(40),   
    child: Center(
      child: Column(
            children: [
              CustomCard(text: "OOP", color: Colors.blue[100]),
              CustomCard(text: "DART", color: Colors.blue[300]),
              CustomCard(text: "FLUTTER", gradientColors: [Colors.blue[100]!, Colors.blue[900]!],) ,
              CustomCard(text: "FLUTTER", gradientColors: [Colors.pink[100]!, Colors.pink[900]!],) ,
              CustomCard(text: "FLUTTER", gradientColors: [Colors.red[100]!, Colors.red[900]!],) 
            ],
          ),
        ),
 
      )
        
      ),
    );
}

