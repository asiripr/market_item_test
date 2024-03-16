//enum for category
import 'package:uuid/uuid.dart';

enum Category {food, travel, leasure, work}

//create a unique uuid
final uuid = const Uuid().v4();

class ExpenceModel{
  ExpenceModel({required this.title, required this.amount, required this.date, required this.category})
  :id=uuid;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}