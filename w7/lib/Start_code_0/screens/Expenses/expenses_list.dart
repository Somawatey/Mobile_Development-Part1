import 'package:flutter/material.dart';
import 'package:w6/Start_code_0/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     children: [
  //       ...expenses.map( (e) => Text(e.title),)
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Text(index.toString() + " - " + expenses[index].title),
    );
  }
}
