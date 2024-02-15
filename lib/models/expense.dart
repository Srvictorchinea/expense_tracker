import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  final String id;
  final String title;
  final Category category;
  final double amount;
  final DateTime date;

  Expense({ required this.title, required this.category, required this.amount, required this.date}) : id = uuid.v4();
}
