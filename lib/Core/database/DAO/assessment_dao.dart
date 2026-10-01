import 'package:drift/drift.dart';
import '../AppDatabase.dart';

import '../tables/AssigmentTable.dart';
import '../tables/ExamTable.dart';

part 'assessment_dao.g.dart';

@DriftAccessor(tables: [AssignmentTable, ExamTable])
class AssessmentDao extends DatabaseAccessor<AppDatabase> with _$AssessmentDaoMixin {
  AssessmentDao(super.db);

  // ==========================================
  // 1. ASSIGNMENT OPERATIONS
  // ==========================================

  /// Watch all assignments
  Stream<List<AssignmentTableData>> watchAllAssignments() =>
      select(assignmentTable).watch();

  /// Insert assignment
  Future<int> insertAssignment(AssignmentTableCompanion assignmentData) =>
      into(assignmentTable).insert(assignmentData);

  /// Update assignment completion status
  Future<bool> updateAssignment(AssignmentTableData assignmentData) =>
      update(assignmentTable).replace(assignmentData);

  /// Delete assignment
  Future<int> deleteAssignment(int id) =>
      (delete(assignmentTable)..where((a) => a.id.equals(id))).go();

  // ==========================================
  // 2. EXAM OPERATIONS
  // ==========================================

  /// Watch all exams
  Stream<List<ExamTableData>> watchAllExams() => select(examTable).watch();

  /// Insert exam mark
  Future<int> insertExam(ExamTableCompanion examData) =>
      into(examTable).insert(examData);

  /// Update exam details
  Future<bool> updateExam(ExamTableData examData) =>
      update(examTable).replace(examData);

  /// Delete exam record
  Future<int> deleteExam(int id) =>
      (delete(examTable)..where((e) => e.id.equals(id))).go();
}