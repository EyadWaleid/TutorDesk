import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfClasses.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfSessions.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetNumberOfStudents.dart';
import 'package:tutordesk/Screens/HomeScreen/Domain/GetUserUpcomingSessions.dart';
import 'package:tutordesk/Screens/HomeScreen/data/Models/Sessions.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/Model/TeacherWorkData.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetUserUpcomingSessions getUserUpcomingSession;
  final GetNumberOfStudents getNumberOfStudents;
  final GetNumberOfSessions getNumberOfSessions;
  final GetNumberOFClasses getNumberOfClasses;

  // Active Stream Subscriptions
  StreamSubscription? _teacherDataSubscription;
  StreamSubscription? _upcomingSessionsSubscription;

  HomeCubit({
    required this.getUserUpcomingSession,
    required this.getNumberOfStudents,
    required this.getNumberOfSessions,
    required this.getNumberOfClasses,
  }) : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  /// 1. WATCH REAL-TIME COUNTERS (Students, Sessions, Classes)
  void watchTeacherWorkData() {
    emit(TeacherWorkDataLoading());

    // Cancel existing subscription to prevent leaks
    _teacherDataSubscription?.cancel();

    // Combine all 3 Drift counter streams into a single emission
    _teacherDataSubscription = Rx.combineLatest3<int, int, int, TeacherWorkData>(
      getNumberOfStudents.getNumberOfStudents() , // Stream<int>
      getNumberOfSessions.getNumberOfSessions(), // Stream<int>
      getNumberOfClasses.getNumberOfGroups(),  // Stream<int>
          (students, sessions, classes) => TeacherWorkData(
        numberOfStudents: students,
        numberOfSessions: sessions,
        numberOfClasses: classes,
      ),
    ).listen(
          (data) {
        emit(TeacherWorkDataLoaded(teacherWorkData: data));
      },
      onError: (error) {
        emit(TeacherWorkDataError(
            errorMessage: 'Failed to watch teacher work data: $error'));
      },
    );
  }

  /// 2. WATCH REAL-TIME UPCOMING SESSIONS
  void watchUpcomingSessions() {
    emit(UpcomingSessionsLoad());

    // Cancel existing subscription to prevent leaks
    _upcomingSessionsSubscription?.cancel();

    // Listen to live database updates from Drift DAO
    _upcomingSessionsSubscription = getUserUpcomingSession
        .getUpcomingSessions()
        .listen(
          (sessions) {
        emit(UpcomingSessionsLoaded(sessions: sessions));
      },
      onError: (error) {
        emit(UpcomingSessionsError(
            errorMessage: 'Failed to watch upcoming sessions: $error'));
      },
    );
  }

  /// 3. ONE-TIME FETCH FALLBACK (If streams are not needed)
/*  Future<void> getTeacherWorkData() async {
    emit(TeacherWorkDataLoading());
    try {
      final numberOfStudents = await getNumberOfStudents.getNumberOfStudents();
      final numberOfSessions = await getNumberOfSessions.getNumberOfSessions();
      final numberOfClasses = await getNumberOfClasses.getNumberOfGroups();

      emit(TeacherWorkDataLoaded(
        teacherWorkData: TeacherWorkData(
          numberOfStudents: numberOfStudents,
          numberOfSessions: numberOfSessions,
          numberOfClasses: numberOfClasses,
        ),
      ));
    } catch (e) {
      emit(TeacherWorkDataError(
          errorMessage: 'Failed to get teacher work data: $e'));
    }
  }*/

  /// 4. CLEANUP: Cancel all active stream subscriptions when Cubit is destroyed
  @override
  Future<void> close() {
    _teacherDataSubscription?.cancel();
    _upcomingSessionsSubscription?.cancel();
    return super.close();
  }
}