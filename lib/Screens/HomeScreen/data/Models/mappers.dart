import 'package:drift/drift.dart';
import '../../../../Core/database/AppDatabase.dart';
import 'Sessions.dart';
extension ClassTableDataX on ClassTableData {
  Sessions toSessions() {
    return Sessions(
      id: id,
      name: name,
      salaryPerStudent: salaryPerStudent,
      startTime: time,
      date: date,
      whatsAppGroup: whatsAppGroup,
    );
  }
}

extension SessionsX on Sessions {
  ClassTableCompanion toCompanion() {
    return ClassTableCompanion.insert(
      id: id != null ? Value(id!) : const Value.absent(),
      name: name,
      salaryPerStudent: salaryPerStudent,
      time: startTime,
      date: date,
      whatsAppGroup: whatsAppGroup,
    );
  }
}