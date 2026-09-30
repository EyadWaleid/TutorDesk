import 'package:drift/drift.dart';

class ExamTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get studentMark => integer()();
  TextColumn get  date => text()();
}
