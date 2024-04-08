import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();
enum Category { food, travel, leisure, work }

class ExpenceModel {
  ExpenceModel({required this.amount, required this.date, required this.title, required this.category})
  : id = uuid;

  final String id;
  final double amount;
  final DateTime date;
  final String title;
  final Category category;
}
