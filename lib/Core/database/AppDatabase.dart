import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:tutordesk/Core/database/tables/AssigmentTable.dart';
import 'package:tutordesk/Core/database/tables/ClassTable.dart';
import 'package:tutordesk/Core/database/tables/ExamTable.dart';
import 'package:tutordesk/Core/database/tables/LessonsTable.dart';
import 'package:tutordesk/Core/database/tables/StudentTable.dart';

import 'DAO/academic_dao.dart';
import 'DAO/assessment_dao.dart';


part 'AppDatabase.g.dart';

@DriftDatabase(
  tables: [
    StudentTable,
    ClassTable,
    LessonsTable,
    AssignmentTable,
    ExamTable,
  ],
  daos: [
    AcademicDao,
    AssessmentDao,
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