import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:serveable_app/ui/config/routes/route.dart';
import 'package:serveable_app/ui/pages/home/home_page.dart';
import 'package:serveable_app/ui/pages/jobs/jobs_page.dart';
import 'package:serveable_app/ui/pages/profile/profile_page.dart';
import 'package:serveable_app/ui/pages/talents/talents_page.dart';
import 'package:serveable_app/ui/widgets/main_scaffold.dart';

class MainRoutes {
  static AppRoute homeRoute = AppRoute(name: 'home', path: '/home');
  static AppRoute jobsRoute = AppRoute(name: 'jobs', path: '/jobs');
  static AppRoute talentsRoute = AppRoute(name: 'talents', path: '/talents');
  static AppRoute profileRoute = AppRoute(name: 'profile', path: '/profile');
  static AppRoute notificationsRoute = AppRoute(name: 'notifications', path: 'notifications');

  static List<RouteBase> routes = [
    ShellRoute(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context, state, child) {
        return MainScaffold(child: child);
      },
      routes: [
        GoRoute(
          name: homeRoute.name,
          path: homeRoute.path,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          name: jobsRoute.name,
          path: jobsRoute.path,
          builder: (context, state) => const JobsPage(),
        ),
        GoRoute(
          name: talentsRoute.name,
          path: talentsRoute.path,
          builder: (context, state) => const TalentsPage(),
        ),
        GoRoute(
          name: profileRoute.name,
          path: profileRoute.path,
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
  ];
}
