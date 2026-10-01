import 'package:drift/drift.dart';
import 'package:tutordesk/Core/database/tables/ClassTable.dart';

class LessonsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  BoolColumn get isPaid => boolean()();
  BoolColumn get isAttended => boolean()();
  IntColumn get classId => integer().references(ClassTable, #id , onDelete: KeyAction.cascade)();
}

