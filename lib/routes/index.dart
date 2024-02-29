import 'package:go_router/go_router.dart';

import 'package:determined/pages/about/index.dart';
import 'package:determined/pages/home/index.dart';

final router = GoRouter(initialLocation: '/home', routes: [
  GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomePage()),
  GoRoute(
      path: '/about',
      name: "about",
      builder: (context, state) {
        final id = state.uri.queryParameters['id'];
        return AboutPage(
          id: id as String,
        );
      }),
]);
