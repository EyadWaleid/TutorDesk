import 'package:drift/drift.dart';

class LessonsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isPaid => boolean()();
}