import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart'; 
const uuid = Uuid();

enum Category { food, travel, leisure, work}
 
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  
  String get formattedDate {
    return DateFormat.yMMMd().format(date); // Example: 'Nov 27, 2024'
  }
}
