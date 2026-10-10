part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeLoading extends HomeState {}
final class HomeLoaded extends HomeState {}
final class TeacherWorkDataLoading extends HomeState{}
final class TeacherWorkDataLoaded extends HomeState{
  final TeacherWorkData teacherWorkData;
  TeacherWorkDataLoaded({required this.teacherWorkData});
}
final class TeacherWorkDataError extends HomeState{
  final String errorMessage;
  TeacherWorkDataError({required this.errorMessage});
}
final class UpcomingSessionsError extends HomeState{
  final String errorMessage;
  UpcomingSessionsError({required this.errorMessage});
}
final class UpcomingSessionsLoad extends HomeState{

}
final class UpcomingSessionsLoaded extends HomeState{
  final List <Sessions> sessions;
  UpcomingSessionsLoaded({required this.sessions});
}

