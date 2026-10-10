import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepo.dart';

class GetNumberOfSessions{
  HomeRepo _homeRepo;

  GetNumberOfSessions({required this._homeRepo});
  int getNumberOfSessions() {
    return _homeRepo.getNumberOfSessions();
  }
}