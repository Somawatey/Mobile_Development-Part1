import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('My Hobbies'),
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Part2
            HobbyCard(
              title: 'Travelling',
              icon: Icons.travel_explore,
              color: Colors.green,
            ),
            HobbyCard(
              title: 'Skating',
              icon: Icons.skateboarding,
              color: Colors.blue[900]!,
            ),
            HobbyCard(
              title: 'Skating',
              icon: Icons.skateboarding,
              color: Colors.blue[900]!,
            ),

          ],
        ),
      ),
    ),
  ));
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.color=Colors.blue,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(icon,color: Colors.white),
                    ),
                    Text(title,style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              
    
        );

  }
}
