import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/home/home_screen.dart';
import '../../features/splash/splash_screen.dart';

import '../../features/destinations/destination_search_screen.dart';
import '../../features/trip_builder/date_selection_screen.dart';
import '../../features/travelers/travelers_screen.dart';
import '../../features/trip_builder/trip_style_screen.dart';
import '../../features/trip_builder/trip_preparation_screen.dart';
import '../../features/trip_builder/trip_dashboard_screen.dart';
import '../../features/health_passport/family_passport_screen.dart';
import '../../features/health_passport/personal_passport_screen.dart';
import '../../features/trip_builder/health_route_map_screen.dart';
import '../../features/trip_builder/preparation_timeline_screen.dart';
import '../../features/trip_builder/packing_list_screen.dart';
import '../../features/trip_builder/boarding_pass_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/destination-search',
      builder: (context, state) => const DestinationSearchScreen(),
    ),
    GoRoute(
      path: '/date-selection',
      builder: (context, state) => const DateSelectionScreen(),
    ),
    GoRoute(
      path: '/travelers',
      builder: (context, state) => const TravelersScreen(),
    ),
    GoRoute(
      path: '/trip-style',
      builder: (context, state) => const TripStyleScreen(),
    ),
    GoRoute(
      path: '/trip-preparation',
      builder: (context, state) => const TripPreparationScreen(),
    ),
    GoRoute(
      path: '/trip-dashboard',
      builder: (context, state) => const TripDashboardScreen(),
    ),
    GoRoute(
      path: '/family-passport',
      builder: (context, state) => const FamilyPassportScreen(),
    ),
    GoRoute(
      path: '/personal-passport/:name',
      builder: (context, state) => PersonalPassportScreen(
        name: state.pathParameters['name'] ?? 'مسافر',
      ),
    ),
    GoRoute(
      path: '/health-route-map',
      builder: (context, state) => const HealthRouteMapScreen(),
    ),
    GoRoute(
      path: '/preparation-timeline',
      builder: (context, state) => const PreparationTimelineScreen(),
    ),
    GoRoute(
      path: '/packing-list',
      builder: (context, state) => const PackingListScreen(),
    ),
    GoRoute(
      path: '/boarding-pass',
      builder: (context, state) => const BoardingPassScreen(),
    ),
  ],
);
