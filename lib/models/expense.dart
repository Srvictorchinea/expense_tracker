import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  final String id;
  final String title;
  final String category;
  final double amount;
  final DateTime date;

  Expense(this.title, this.category, this.amount, this.date) : id = uuid.v4();
}
