import 'package:drift/drift.dart';
import 'package:tutordesk/Core/database/ClassTable.dart';

class StudentTable  extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get phoneNumber => text()();
  TextColumn get address => text()();
  TextColumn get gender => text()();
  TextColumn get parentPhoneNumber => text()();
  BoolColumn get isPaid => boolean()();
  IntColumn get classId => integer().nullable().references(ClassTable, #id,onDelete: KeyAction.cascade)();
}