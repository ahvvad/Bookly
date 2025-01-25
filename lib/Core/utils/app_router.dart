import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      // initial route page 
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      // pages route
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
