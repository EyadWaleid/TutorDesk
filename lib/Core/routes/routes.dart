import 'package:go_router/go_router.dart';
import 'package:tutordesk/Screens/HomeScreen/presentation/view/homeScreen.dart';
import 'package:tutordesk/main.dart';
class Routing {
  static final  GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(
  path: '/',
  builder: (context, state) => const HomeScreen(),
  ),
  // GoRoute(
  // path: '/details/:id',
  // builder: (context, state) {
  // final id = state.pathParameters['id'];
  // return DetailsScreen(id: id);
  // },
  // ),
  ],
  // Optional redirect guard (e.g., Auth check)
  // redirect: (context, state) {
  // final isLoggedIn = checkAuthState(); // your logic
  // final isLoggingIn = state.matchedLocation == '/login';
  // if (!isLoggedIn && !isLoggingIn) return '/login';
  // return null;
  // },
  );
}