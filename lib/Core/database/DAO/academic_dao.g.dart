// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_dao.dart';

// ignore_for_file: type=lint
mixin _$AcademicDaoMixin on DatabaseAccessor<AppDatabase> {
  $ClassTableTable get classTable => attachedDatabase.classTable;
  $StudentTableTable get studentTable => attachedDatabase.studentTable;
  $LessonsTableTable get lessonsTable => attachedDatabase.lessonsTable;
  AcademicDaoManager get managers => AcademicDaoManager(this);
}

class AcademicDaoManager {
  final _$AcademicDaoMixin _db;
  AcademicDaoManager(this._db);
  $$ClassTableTableTableManager get classTable =>
      $$ClassTableTableTableManager(_db.attachedDatabase, _db.classTable);
  $$StudentTableTableTableManager get studentTable =>
      $$StudentTableTableTableManager(_db.attachedDatabase, _db.studentTable);
  $$LessonsTableTableTableManager get lessonsTable =>
      $$LessonsTableTableTableManager(_db.attachedDatabase, _db.lessonsTable);
}
