import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfClasses.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfSessions.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfStudents.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetUserUpcomingSessions.dart';
import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/Model/TeacherWorkData.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetUserUpcomingSessions getUserUpcomingSession ;
  final GetNumberOfStudents getNumberOfStudents ;
  final GetNumberOfSessions getNumberOfSessions;
  final GetNumberOFClasses getNumberOfClasses ;
  HomeCubit({required this.getUserUpcomingSession, required this.getNumberOfStudents, required this.getNumberOfSessions, required this.getNumberOfClasses}) : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
 void getTeacherWorkData() {
    final numberOfStudents = getNumberOfStudents.getNumberOfStudents();
    final numberOfSessions = getNumberOfSessions.getNumberOfSessions();
    final numberOfClasses = getNumberOfClasses.getNumberOfGroups();
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
      final sessions = getUserUpcomingSession.getUpcomingSessions();
      emit(UpcomingSessionsLoaded(sessions: sessions));
    } catch (e) {
      emit(UpcomingSessionsError(errorMessage: 'Failed to get upcoming sessions: $e'));
    }
  }
}


