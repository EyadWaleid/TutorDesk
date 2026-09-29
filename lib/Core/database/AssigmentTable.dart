import 'package:drift/drift.dart';

class AssignmentTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isDone => boolean()();
  TextColumn get date => text()();
}

