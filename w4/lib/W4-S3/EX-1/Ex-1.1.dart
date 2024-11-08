import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: SizedBox(
                width: 400,
                height: 100,
                child: ElevatedButton(
                    onPressed: () => {},
                    child: const Center(
                      child: Text("Not Selected"),
                    )),
              ),
        ),
      ),
    ));
//What is the goal of the SizeBox:
//+ the goal of using the sizeBox is to set the dimension in specific size, to make the widget Fill Available Space,add space
//what is an EleevatedButton 
//+ ElevatedButton is a Raised button that has shadow, for primary actions.