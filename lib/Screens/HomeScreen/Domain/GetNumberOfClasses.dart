import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepo.dart';

class GetNumberOFClasses{
  HomeRepo _homeRepo ;
  GetNumberOFClasses({required this._homeRepo});
  int getNumberOfGroups() {
    return _homeRepo.getNumberOfGroups();}
}
