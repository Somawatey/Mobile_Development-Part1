
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final Color? color;
  final List<Color>? gradientColors;

  const CustomCard({
    required this.text,
    this.color = Colors.blue,
    this.gradientColors,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(200, 20, 200, 20), // left top right bottom
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: color,
        gradient: gradientColors != null
            ? LinearGradient(
                colors: gradientColors!,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none, // Remove underline
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}