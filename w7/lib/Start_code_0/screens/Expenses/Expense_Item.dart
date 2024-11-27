import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:w7/Start_code_0/models/expense.dart';

class ExpenseItem extends StatefulWidget {
  final String title; // Expense title
  final double amount; // Expense amount
  final DateTime date; // Expense date
  final Category category; // Expense category

  ExpenseItem({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  @override
  State<ExpenseItem> createState() => _ExpenseItemState();
}

class _ExpenseItemState extends State<ExpenseItem> {
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
  @override
  Widget build(BuildContext context) {

    
    final date =  DateFormat.yMd().format(widget.date);
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
                  '\$${widget.amount.toStringAsFixed(2)}',
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
                  date, // Format date using intl
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
