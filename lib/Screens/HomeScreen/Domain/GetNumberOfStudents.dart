import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepo.dart';

class GetNumberOfStudents {
  HomeRepo _homeRepo ;
  GetNumberOfStudents({required this._homeRepo});
  Stream<int> getNumberOfStudents() {
    return _homeRepo.getNumberOfStudents();
  }
}