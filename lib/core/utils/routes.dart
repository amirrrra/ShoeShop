import 'package:go_router/go_router.dart';
import 'package:store/features/home/presentation/views/brand_view.dart';
import 'package:store/features/home/presentation/views/home_view.dart';
import 'package:store/features/home/presentation/views/offers_view.dart';
import 'package:store/features/home/presentation/views/popular_view.dart';
import 'package:store/features/home/presentation/views/product_view.dart';
import 'package:store/features/splash/presentation/views/splash_view.dart';

class Routes {
  static const kHome = '/home';
  static const kOffers = '/offers';
  static const kBrand = '/brand';
  static const kPopular = '/popular';
  static const kProduct = '/product';

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
      GoRoute(
        path: kOffers,
        builder: (context, state) => const OffersView(),
      ),
      GoRoute(
        path: kBrand,
        builder: (context, state) => const BrandView(),
      ),
      GoRoute(
        path: kPopular,
        builder: (context, state) => const PopularView(),
      ),
      GoRoute(
        path: kProduct,
        builder: (context, state) => const ProductView(),
      ),
    ],
  );
}
