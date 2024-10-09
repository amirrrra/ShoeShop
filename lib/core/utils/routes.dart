import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store/features/home/data/repos/home_repo_impl.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => ProductCubit(HomeRepoImpl()),
          child: const HomeView(),
        ),
      ),
    ],
  );
}
