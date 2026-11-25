import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tutordesk/Screens/GroupScreen/presentation/GroupsScreen.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/Cubit/home_cubit.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/view/MainPage.dart';


import '../../Screens/HomeScreen/presentation/view/homeScreen.dart';
import '../DI/get_it.dart';
class Routing {
  static final  GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => BlocProvider<HomeCubit>(
        create: (_) => getIt<HomeCubit>()..watchTeacherWorkData()..watchUpcomingSessions(),
        child: ScaffoldWithNavBar(navigationShell: navigationShell),
      ),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(path: '/search', builder: (_, __) => const GroupScreen()),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(path: '/profile', builder: (_, __) => const HomeScreen()),
        ]),
      ],
    ),
],
  );
}