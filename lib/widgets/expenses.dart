import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter course',
        category: Category.work,
        amount: 19.99,
        date: DateTime.now()),
    Expense(
        title: 'Cinema',
        category: Category.leisure,
        amount: 15.96,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ]
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
