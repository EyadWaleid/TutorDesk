import 'dart:ffi';

import 'package:drift/drift.dart';

class ClassTable extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get  name => text()();
  IntColumn get salaryPerStudent => integer()();
  TextColumn get time => text()();
  TextColumn get date => text()();
  TextColumn get whatsAppGroup => text()();}
