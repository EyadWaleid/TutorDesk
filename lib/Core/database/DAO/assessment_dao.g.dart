// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_dao.dart';

// ignore_for_file: type=lint
mixin _$AssessmentDaoMixin on DatabaseAccessor<AppDatabase> {
  $AssignmentTableTable get assignmentTable => attachedDatabase.assignmentTable;
  $ExamTableTable get examTable => attachedDatabase.examTable;
  AssessmentDaoManager get managers => AssessmentDaoManager(this);
}

class AssessmentDaoManager {
  final _$AssessmentDaoMixin _db;
  AssessmentDaoManager(this._db);
  $$AssignmentTableTableTableManager get assignmentTable =>
      $$AssignmentTableTableTableManager(
        _db.attachedDatabase,
        _db.assignmentTable,
      );
  $$ExamTableTableTableManager get examTable =>
      $$ExamTableTableTableManager(_db.attachedDatabase, _db.examTable);
}
