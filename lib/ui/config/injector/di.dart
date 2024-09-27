import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/data/datasources/auth/auth_datasource.dart';
import 'package:serveable_app/data/datasources/auth/remote/auth_supabase_datasource_impl.dart';
import 'package:serveable_app/data/datasources/country/country_datasource.dart';
import 'package:serveable_app/data/datasources/country/remote/country_datasource_impl.dart';
import 'package:serveable_app/data/repositories/auth/auth_repository.dart';
import 'package:serveable_app/data/repositories/auth/auth_repository_impl.dart';
import 'package:serveable_app/data/repositories/country/country_repository.dart';
import 'package:serveable_app/data/repositories/country/country_repository_impl.dart';
import 'package:serveable_app/ui/config/routes/routes.dart';
import 'package:serveable_app/ui/notifiers/auth/auth_notifier.dart';
import 'package:serveable_app/ui/notifiers/auth/auth_notifier_state.dart';
import 'package:serveable_app/ui/notifiers/country/country_notifier.dart';
import 'package:serveable_app/ui/notifiers/country/country_notifier_state.dart';
import 'package:serveable_app/ui/notifiers/theme/theme_notifier.dart';
import 'package:serveable_app/ui/notifiers/theme/theme_notifier_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: MainRoutes.homeRoute.path,
    routes: [...MainRoutes.routes],
    redirect: (context, state) {
      return null;
    },
  );
});
final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

///DATASOURCES
final countryDatasourceProvider = Provider<CountryDatasource>((ref) {
  return CountryDatasourceImpl(dio: ref.read(dioProvider));
});
final authDatasourceProvider = Provider<AuthDatasource>((ref) {
  return AuthSupabaseDatasourceImpl(supabaseClient: Supabase.instance.client);
});

///REPOSITORIES
final countryRepositoryProvider = Provider<CountryRepository>((ref) {
  final countryDatasource = ref.read(countryDatasourceProvider);
  return CountryRepositoryImpl(countryDatasource: countryDatasource);
});
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final authDatasource = ref.read(authDatasourceProvider);
  return AuthRepositoryImpl(authDatasource: authDatasource);
});

///NOTIFIERS
final themeNotifierProvider = NotifierProvider<ThemeNotifier, ThemeNotifierState>(() {
  return ThemeNotifier();
});
final authNotifierProvider = NotifierProvider<AuthNotifier, AuthNotifierState>(() {
  return AuthNotifier();
});
final countryNotifierProvider = NotifierProvider<CountryNotifier, CountryNotifierState>(() {
  return CountryNotifier();
});
