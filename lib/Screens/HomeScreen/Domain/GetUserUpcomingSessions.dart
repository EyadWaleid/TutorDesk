import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';
import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepo.dart';

class GetUserUpcomingSessions {
  HomeRepo _homeRepo;
  GetUserUpcomingSessions({required this._homeRepo});
  List<Sessions> getUpcomingSessions() {
    return _homeRepo.getUpcomingSessions();
  }
}