import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:sudoku/legacy/ai/ai_root.dart';
import 'package:sudoku/src/splash/splash_view.dart';
import 'package:sudoku/legacy/legacy_root.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
          path: 'ai',
          builder: (context, state) => const AIApp(),
        ),
        GoRoute(
          path: 'legacy',
          builder: (context, state) => const LegacyApp(),
        ),
      ],
    ),
  ],
);

void goToSplashScreen(BuildContext context) {
  context.go('/');
}
