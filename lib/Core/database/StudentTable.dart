import 'package:drift/drift.dart';
import 'package:tutordesk/Core/database/AssigmentTable.dart';
import 'package:tutordesk/Core/database/ClassTable.dart';
import 'ExamTable.dart';
import 'LessonsTable.dart';

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
class StudentWithAssignment extends Table{
  IntColumn get studentId => integer().references(StudentTable, #id,onDelete: KeyAction.cascade)();
  IntColumn get assignmentId => integer().references(AssignmentTable, #id,onDelete: KeyAction.cascade)();
}

class StudentWithExam extends Table{
  IntColumn get studentId => integer().references(StudentTable, #id,onDelete: KeyAction.cascade)();
  IntColumn get examId => integer().references(ExamTable, #id,onDelete: KeyAction.cascade)();
}

class StudentWithLessons extends Table {
  IntColumn get studentId => integer().references(StudentTable, #id,onDelete: KeyAction.cascade)();
  IntColumn get lessonsId => integer().references(LessonsTable, #id,onDelete: KeyAction.cascade)();
}
