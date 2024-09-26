import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/config/injector/di.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context,ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      title: 'GoRouter Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
