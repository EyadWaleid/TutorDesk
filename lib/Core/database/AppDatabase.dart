import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'AssigmentTable.dart';
import 'ClassTable.dart';
import 'ExamTable.dart';
import 'LessonsTable.dart';
import 'StudentTable.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    StudentTable,
    ClassTable,
    LessonsTable,
    AssignmentTable,
    ExamTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'tutordeskDb',
      native: DriftNativeOptions(
        setup: (rawDb) {
          rawDb.execute('PRAGMA foreign_keys = ON;');
        },
      ),
    );
  }
}