import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/search/presention/views/search_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';
import '../../Features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

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
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 300),
            child: const SearchView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 200),
            child: const SearchView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final opacity = Tween(begin: 0.0, end: 1.0).animate(animation);

              return FadeTransition(opacity: opacity, child: child);
            },
          );
        },
      ),
    ],
  );
}

// ToDo: Slide Transition
// GoRoute(
//         path: kSearchView,
//         builder: (context, state) => const SearchView(),
//         pageBuilder: (context, state) {
//           return CustomTransitionPage(
//             transitionDuration: const Duration(milliseconds: 500),
//             child: const SearchView(),
//             transitionsBuilder: (context, animation, secondaryAnimation, child) {
//               const begin = Offset(1.0, 0.0);
//               const end = Offset.zero;
//               final tween = Tween(begin: begin, end: end);
//               final offsetAnimation = animation.drive(tween);
//               return SlideTransition(position: offsetAnimation, child: child);
//             },
//           );
//         },
//       ),

// ToDo: Fade Slide Transition
// GoRoute(
//         path: kSearchView,
//         builder: (context, state) => const SearchView(),
//         pageBuilder: (context, state) {
//           return CustomTransitionPage(
//             transitionDuration: const Duration(milliseconds: 500),
//             child: const SearchView(),
//             transitionsBuilder:
//                 (context, animation, secondaryAnimation, child) {
//               final opacity = Tween(begin: 0.0, end: 1.0).animate(animation);
//               return FadeTransition(opacity: opacity, child: child);
//             },
//           );
//         },
//       ),