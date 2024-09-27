import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/config/injector/di.dart';
import 'package:serveable_app/ui/config/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context,ref) {
    final themeData = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
     theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: themeData.color,
          brightness: themeData.brightness,
        ),
      ),
      supportedLocales: L10n.all,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }
}
