import 'package:go_router/go_router.dart';
import 'package:serveable_app/ui/config/routes/route.dart';
import 'package:serveable_app/ui/pages/home/home_page.dart';
import 'package:serveable_app/ui/pages/jobs/jobs_page.dart';
import 'package:serveable_app/ui/pages/profile/profile_page.dart';
import 'package:serveable_app/ui/pages/talents/talents_page.dart';

class MainRoutes {
  static Route homeRoute = Route(name: 'home', path: '/home');
  static Route jobsRoute = Route(name: 'jobs', path: '/jobs');
  static Route talentsRoute = Route(name: 'talents', path: '/talents');
  static Route profileRoute = Route(name: 'profile', path: '/profile');
  
  static List<RouteBase> routes = [
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
  ];
}
