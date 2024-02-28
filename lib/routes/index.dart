import 'package:go_router/go_router.dart';

import 'package:determined/pages/home/index.dart';

final router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomePage())
]);
