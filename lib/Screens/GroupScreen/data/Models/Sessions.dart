import '../../../../Core/database/AppDatabase.dart';

class Sessions {
  final int? id;
  final String name;
  final int salaryPerStudent;
  final String startTime;
  final String date;
  final String whatsAppGroup;

  Sessions({
    this.id,
    required this.name,
    required this.salaryPerStudent,
    required this.startTime,
    required this.date,
    required this.whatsAppGroup,
  });

  // Mapping from Drift DB Data Class to Domain Model
  factory Sessions.fromDataClass(ClassTableData data) {
    return Sessions(
      id: data.id,
      name: data.name,
      salaryPerStudent: data.salaryPerStudent,
      startTime: data.time,
      date: data.date,
      whatsAppGroup: data.whatsAppGroup,
    );
  }
}