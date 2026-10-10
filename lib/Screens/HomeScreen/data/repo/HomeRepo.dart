import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';

abstract class HomeRepo {
List<Sessions> getUpcomingSessions();
int getNumberOfStudents() ;
int getNumberOfSessions() ;
int getNumberOfGroups() ;
}