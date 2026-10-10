import 'package:drift/drift.dart';
import '../AppDatabase.dart';
import '../tables/ClassTable.dart';
import '../tables/LessonsTable.dart';
import '../tables/StudentTable.dart';
part 'academic_dao.g.dart';
@DriftAccessor(tables: [ClassTable, StudentTable, LessonsTable])
class AcademicDao extends DatabaseAccessor<AppDatabase> with _$AcademicDaoMixin {
  AcademicDao(super.db);

  // ==========================================
  // 1. CLASS OPERATIONS
  // ==========================================

  /// Watch all classes as a live Stream
  Stream<List<ClassTableData>> watchAllClasses() => select(classTable).watch();

  /// Fetch a single class by ID
  Future<ClassTableData> getClassById(int id) =>
      (select(classTable)..where((c) => c.id.equals(id))).getSingle();

  /// Insert a new class
  Future<int> insertClass(ClassTableCompanion classData) =>
      into(classTable).insert(classData);

  /// Update class details
  Future<bool> updateClass(ClassTableData classData) =>
      update(classTable).replace(classData);

  /// Delete class (Cascades deletion to associated students & lessons)
  Future<int> deleteClass(int id) =>
      (delete(classTable)..where((c) => c.id.equals(id))).go();

  // ==========================================
  // 2. STUDENT OPERATIONS
  // ==========================================

  /// Watch all students
  Stream<List<StudentTableData>> watchAllStudents() => select(studentTable).watch();

  /// Watch students filtered by class ID
  Stream<List<StudentTableData>> watchStudentsInClass(int classId) {
    return (select(studentTable)..where((s) => s.classId.equals(classId))).watch();
  }

  /// Insert a student assigned to a class
  Future<int> insertStudent(StudentTableCompanion studentData) =>
      into(studentTable).insert(studentData);

  /// Update student details
  Future<bool> updateStudent(StudentTableData studentData) =>
      update(studentTable).replace(studentData);

  /// Delete a student
  Future<int> deleteStudent(int id) =>
      (delete(studentTable)..where((s) => s.id.equals(id))).go();

  // ==========================================
  // 3. LESSON OPERATIONS
  // ==========================================

  /// Watch lessons for a specific class
  Stream<List<LessonsTableData>> watchLessonsForClass(int classId) {
    return (select(lessonsTable)..where((l) => l.classId.equals(classId))).watch();
  }

  /// Insert a lesson
  Future<int> insertLesson(LessonsTableCompanion lessonData) =>
      into(lessonsTable).insert(lessonData);

  /// Update lesson attendance/payment status
  Future<bool> updateLesson(LessonsTableData lessonData) =>
      update(lessonsTable).replace(lessonData);

  /// Delete a lesson
  Future<int> deleteLesson(int id) =>
      (delete(lessonsTable)..where((l) => l.id.equals(id))).go();
}