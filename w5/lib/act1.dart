import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    
    home: Scaffold(
      //SingleScollview can not use in this case because it use expended(expend commplete avalaible space) call unbouned
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 100,
          ),
        Container(
          color: Colors.blue,
          height: 00,

        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                color: Colors.green,
                height: 100,  

              ),),
              
              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              )
            ]
            
         ) 
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Container(
                  color: Colors.yellow,
                  height: 100,
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: Container(
                  color: Colors.yellow,
                  height: 100,
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: Container(
                  color: Colors.yellow,
                  height: 100,
                )),
              ],
            ),

          ),
         
          SizedBox(
              height: 20,
          ),
          Expanded(
            child: Container(
              color: Colors.pink[100],
            )

          )
          
        ],

       
    ),
    ),
  ));
}
