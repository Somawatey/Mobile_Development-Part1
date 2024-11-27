import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:w7/Start_code_0/models/expense.dart';

class ExpenseItem extends StatefulWidget {
  final String title; // Expense title
  final double price; // Expense amount
  final DateTime date; // Expense date
  final String category; // Expense category

  ExpenseItem({
    required this.title,
    required this.price,
    required this.date,
    required this.category,
  });

  @override
  State<ExpenseItem> createState() => _ExpenseItemState();
}

class _ExpenseItemState extends State<ExpenseItem> {
  @override
  Widget build(BuildContext context) {
    // Choose an icon based on the category
    IconData getCategoryIcon( Category category) {
      switch (category) {
        case Category.food:
          return Icons.fastfood;
        case Category.travel:
          return Icons.directions_car;
        case Category.leisure:
          return Icons.book;
        case Category.work:
          return Icons.work;
      }
    }

    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${widget.price.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Spacer(), // Spacer to handle space in the middle
            Row(
              children: [
                Icon(
                  getCategoryIcon(widget.category as Category),
                  size: 24,
                  color: Colors.blue,
                ),
                SizedBox(width: 8), // Space between icon and date
                Text(
                  DateFormat.yMd()
                      .format(widget.date), // Format date using intl
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
