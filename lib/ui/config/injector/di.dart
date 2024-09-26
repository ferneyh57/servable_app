import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/config/routes/routes.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: MainRoutes.homeRoute.path,
    routes: [...MainRoutes.routes],
    redirect: (context, state) {
      return null;
    },
  );
});
