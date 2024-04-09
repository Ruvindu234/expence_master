import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();
final famattedDate = DateFormat.yMd();

enum Category { food, travel, leisure, work }

final CategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class ExpenceModel {
  ExpenceModel(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid;

  final String id;
  final double amount;
  final DateTime date;
  final String title;
  final Category category;

  String get getFormattedDate {
    return famattedDate.format(date);
  }
}
