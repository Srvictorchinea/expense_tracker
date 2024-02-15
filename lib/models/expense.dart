import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final Category category;
  final double amount;
  final DateTime date;

  Expense(
      {required this.title,
      required this.category,
      required this.amount,
      required this.date})
      : id = uuid.v4();
      
}
