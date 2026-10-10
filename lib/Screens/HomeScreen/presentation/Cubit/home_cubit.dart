import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfClasses.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfSessions.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfStudents.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetUserUpcomingSessions.dart';
import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';
import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepo.dart';
import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepoImp.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/Model/TeacherWorkData.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
  final GetUserUpcomingSessions _getUserUpcomingSession = GetUserUpcomingSessions(homeRepo: HomeRepoImp());
  final GetNumberOfStudents _getNumberOfStudents = GetNumberOfStudents(homeRepo: HomeRepoImp());
  final GetNumberOfSessions _getNumberOfSessions = GetNumberOfSessions(homeRepo: HomeRepoImp());
  final GetNumberOFClasses _getNumberOfClasses = GetNumberOFClasses(homeRepo: HomeRepoImp());
 void getTeacherWorkData() {
    final numberOfStudents = _getNumberOfStudents.getNumberOfStudents();
    final numberOfSessions = _getNumberOfSessions.getNumberOfSessions();
    final numberOfClasses = _getNumberOfClasses.getNumberOfGroups();
    emit(TeacherWorkDataLoading());
    try {
      emit(TeacherWorkDataLoaded(
        teacherWorkData: TeacherWorkData(
          numberOfStudents: numberOfStudents,
          numberOfSessions: numberOfSessions,
          numberOfClasses: numberOfClasses,
        ),
      ));
    } catch (e) {
      emit(TeacherWorkDataError(errorMessage: 'Failed to get teacher work data: $e'));
    }

  }
  void getUpcomingSessions() {
    emit(UpcomingSessionsLoad());
    try {
      final sessions = _getUserUpcomingSession.getUpcomingSessions();
      emit(UpcomingSessionsLoaded(sessions: sessions));
    } catch (e) {
      emit(UpcomingSessionsError(errorMessage: 'Failed to get upcoming sessions: $e'));
    }
  }
}


