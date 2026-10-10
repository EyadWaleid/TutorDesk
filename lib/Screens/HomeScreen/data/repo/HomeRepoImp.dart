import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';

import 'HomeRepo.dart';

class HomeRepoImp implements HomeRepo{
  @override
  List<Sessions> getUpcomingSessions() {
    return [
      Sessions(date: "10/5/2025", grade: "Grade primary 5", startTime: "10:00 AM"),
      Sessions(date: "10/5/2025", grade: "Grade primary 6", startTime: "11:00 AM"),
      Sessions(date: "10/5/2025", grade: "Grade primary 3", startTime: "12:00 PM"),
    ];
  }
  @override
  int getNumberOfGroups() {
   return 10;
  }
  @override
  int getNumberOfSessions() {
    return 10 ;
  }
  @override
  int getNumberOfStudents() {
      return 50;
  }
}