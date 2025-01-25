import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';
import '../../Features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      // initial route page
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      // pages route
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
