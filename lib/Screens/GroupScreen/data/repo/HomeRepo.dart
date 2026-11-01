import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';

abstract class HomeRepo {
  Stream<List<Sessions>> getUpcomingSessions();
  Stream <int> getNumberOfStudents() ;
  Stream<int> getNumberOfSessions() ;
  Stream<int> getNumberOfGroups() ;
  Stream<int> getNumberOfClasses();
}
