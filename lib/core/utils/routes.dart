import 'package:go_router/go_router.dart';
import 'package:store/features/splash/presentation/views/splash_view.dart';

class Routes {
  final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
