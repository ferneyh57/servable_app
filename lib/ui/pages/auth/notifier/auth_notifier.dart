// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/data/repositories/auth/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthNotifier extends Notifier<bool> {
  final SupabaseClient supabaseClient;
  final AuthRepository authRepository;
  AuthNotifier({
    required this.supabaseClient,
    required this.authRepository,
  });

  @override
  bool build() {
    return _hasSession;
  }

  bool get _hasSession => supabaseClient.auth.currentSession != null;

  Future<String?> onSendEmailOTP(String email) async {
    final (success, error) = await authRepository.sendEmailOTP(email);
    if (!success) return error?.message;
    return null;
  }

  Future<String?> onSendPhoneOTP(String phone) async {
    final (success, error) = await authRepository.sendPhoneOTP(phone);
    if (!success) return error?.message;
    return null;
  }

  Future<String?> onVerifyEmailOTP(String email, String otp) async {
    final (success, error) = await authRepository.verifyEmailOTP(email, otp);
    if (!success) return error?.message;
    state = _hasSession;
    return null;
  }

  Future<String?> onVerifyphoneOTP(String phone, String otp) async {
    final (success, error) = await authRepository.verifyphoneOTP(phone, otp);
    if (!success) return error?.message;
    state = _hasSession;
    return null;
  }

  Future<String?> onLogout() async {
    final (success, error) = await authRepository.logout();
    if (!success) return error?.message;
    state = _hasSession;
    return null;
  }
}
