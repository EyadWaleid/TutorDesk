import 'package:get_it/get_it.dart';
import 'package:tutordesk/Core/database/AppDatabase.dart';
import 'package:tutordesk/Core/database/DAO/academic_dao.dart';
import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepo.dart';
import 'package:tutordesk/Screens/HomeScreen/data/repo/HomeRepoImp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../Core/database/shared_perferance/shared_perferance.dart';
import '../../Screens/HomeScreen/Domain/GetNumberOfClasses.dart';
import '../../Screens/HomeScreen/Domain/GetNumberOfSessions.dart';
import '../../Screens/HomeScreen/Domain/GetNumberOfStudents.dart';
import '../../Screens/HomeScreen/Domain/GetUserUpcomingSessions.dart';
import '../../Screens/HomeScreen/presentation/Cubit/home_cubit.dart';
final getIt = GetIt.instance;
Future<void> setupLocator() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<AppPreferences>(() => AppPreferences(sharedPrefs));
  // 1. Register the AppDatabase instance
  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase(),
    dispose: (db) => db.close(),
  );
  // 2. Register AcademicDao, injecting the AppDatabase instance from getIt
  getIt.registerLazySingleton<AcademicDao>(
        () => AcademicDao(getIt<AppDatabase>()),
  );
  // 3. Register HomeRepo, injecting the AcademicDao instance from getIt
  getIt.registerLazySingleton<HomeRepo>(
        () => HomeRepoImp(academicDao: getIt<AcademicDao>()),
  );
// 3. Use Cases (Inject the SAME HomeRepo instance into all of them)
  getIt.registerLazySingleton<GetUserUpcomingSessions>(
        () => GetUserUpcomingSessions(homeRepo: getIt<HomeRepo>()),
  );
  getIt.registerLazySingleton<GetNumberOfStudents>(
        () => GetNumberOfStudents(homeRepo: getIt<HomeRepo>()),
  );
  getIt.registerLazySingleton<GetNumberOfSessions>(
        () => GetNumberOfSessions(homeRepo: getIt<HomeRepo>()),
  );
  getIt.registerLazySingleton<GetNumberOFClasses>(
        () => GetNumberOFClasses(homeRepo: getIt<HomeRepo>()),
  );
  // 4. Cubit Factory (Creates a new Cubit instance per screen view)
  getIt.registerFactory<HomeCubit>(
        () => HomeCubit(
      getUserUpcomingSession: getIt<GetUserUpcomingSessions>(),
      getNumberOfStudents: getIt<GetNumberOfStudents>(),
      getNumberOfSessions: getIt<GetNumberOfSessions>(),
      getNumberOfClasses: getIt<GetNumberOFClasses>(),
    ),
  );


}