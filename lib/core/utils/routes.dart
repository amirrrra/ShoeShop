import 'package:go_router/go_router.dart';
import 'package:store/features/home/presentation/views/home_view.dart';
import 'package:store/features/splash/presentation/views/splash_view.dart';

class Routes {
  static const kHome = '/home';
  
  final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
