import 'package:drift/drift.dart';

class Exam extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentMark => integer()();
  TextColumn get  date => text()();
}