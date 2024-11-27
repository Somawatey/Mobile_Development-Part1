import 'package:flutter/material.dart';
import 'package:w7/Start_code_0/models/expense.dart';
import 'package:w7/Start_code_0/screens/Expenses/Expense_Item.dart';
//import 'package:w7/Start_code_0/screens/expense_Item.dart';


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
      itemBuilder: (context, index) {
        // Accessing the category for each expense
        final expense = expenses[index];
        return ExpenseItem(
          title: expense.title,
          amount: expense.amount,
          date: expense.date,
          category: expense.category,  // Correctly pass the category from the expense object
        );
      },//itemBuilder: (context, index) => Text(index.toString() + " - " + expenses[index].title),
    );
  }
}
