import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/app.dart';
import 'package:serveable_app/ui/config/constant/env_constant.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: const String.fromEnvironment(supabaseUrl),
    anonKey: const String.fromEnvironment(supabaseKey),
  );
  runApp(const ProviderScope(child: MyApp()));
}
