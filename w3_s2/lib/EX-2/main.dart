import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: const EdgeInsets.all(40),
      margin: const EdgeInsets.all(50),
      color: Colors.blue[300],
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(20)),
        child: const Center(
          child: Text(
            "CADT STUDENTS",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    ),
  ));
}

// Container: Used here to style a specific area (add padding, margin, color).
// Scaffold (not used): Typically for entire screen structure with app bar, bottom nav, etc.
// Use Scaffold if you need a full screen layout with multiple sections.