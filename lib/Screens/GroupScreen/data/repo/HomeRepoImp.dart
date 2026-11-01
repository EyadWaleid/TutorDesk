import 'package:tutordesk/Core/database/DAO/academic_dao.dart';
import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';
import 'package:tutordesk/Screens/HomeScreen/data/Models/mappers.dart';

import 'HomeRepo.dart';

class HomeRepoImp implements HomeRepo{
  AcademicDao _academicDao ;
  HomeRepoImp({required this._academicDao});
  @override
  Stream<List<Sessions>> getUpcomingSessions() {
    return _academicDao.watchUpcomingSessions(DateTime.now()).map((event) =>
        event.map((e) => e.toSessions()).toList(),);
  }
  @override
  Stream<int> getNumberOfGroups() {
    return _academicDao.watchNumberOfUpcomingSessions();
  }
  @override
  Stream<int> getNumberOfSessions() {
    return  _academicDao.watchNumberOfUpcomingSessions();
  }
  @override
  Stream<int> getNumberOfStudents() {
    return  _academicDao.watchNumberOfStudents();
  }
  @override
  Stream<int> getNumberOfClasses() {
  return _academicDao.watchNumberOfUpcomingSessions();
  }
  List<Sessions> getUpcomingSessionsMockUp() {
    return [
      Sessions(
        id: 1,
        name: "Mathematics - Grade Primary 5",
        salaryPerStudent: 150,
        startTime: "10:00 AM",
        date: "10/5/2025",
        whatsAppGroup: "https://chat.whatsapp.com/sampleLink1",
      ),
      Sessions(
        id: 2,
        name: "Science - Grade Primary 6",
        salaryPerStudent: 180,
        startTime: "11:00 AM",
        date: "10/5/2025",
        whatsAppGroup: "https://chat.whatsapp.com/sampleLink2",
      ),
      Sessions(
        id: 3,
        name: "English - Grade Primary 3",
        salaryPerStudent: 120,
        startTime: "12:00 PM",
        date: "10/5/2025",
        whatsAppGroup: "https://chat.whatsapp.com/sampleLink3",
      ),
    ];
  }
  int getNumberOfSessionsMockUp() {
    return 10 ;
  }
  int getNumberOfClassesMockUp() {
    return 10;
  }
  int getNumberOfStudentsMockUp() {
    return 50;
  }
  int getNumberOfGroupsMockUp() {
    return 10;
  }
}