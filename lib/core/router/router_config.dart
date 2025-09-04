import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:yum_quick/core/router/app_navigation.dart';
import 'package:yum_quick/features/launch_welcome/presentation/welcome_screen.dart';
import 'package:yum_quick/features/navigation_bar/presentation/screens/navigation_bar_screen.dart';
import 'package:yum_quick/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:yum_quick/features/splash_screen/presentation/screens/splash_screen.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: AppNavigation.splash,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: AppNavigation.welcome,
      path: '/welcome',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      name: AppNavigation.onboarding,
      path: '/onboarding',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _navigatorKey,
      builder:
          (context, state, navigationShell) =>
              NavigationBarScreen(navigationShell: navigationShell),
      branches: <StatefulShellBranch>[],
    ),
  ],
);
