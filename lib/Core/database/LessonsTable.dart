import 'package:drift/drift.dart';

class LessonsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  BoolColumn get isPaid => boolean()();
  BoolColumn get isAttended => boolean()();
}