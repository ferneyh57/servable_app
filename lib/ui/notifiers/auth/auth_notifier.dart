// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/config/injector/di.dart';
import 'package:serveable_app/ui/notifiers/auth/auth_notifier_state.dart';

class AuthNotifier extends Notifier<AuthNotifierState> {
  @override
  AuthNotifierState build() {
    return const AuthNotifierState();
  }

  void _setLoadingAndReset() {
    state = state.copyWith(isLoading: true, hasError: false, message: '');
  }

  Future<void> onSendEmailOTP(String email) async {
    _setLoadingAndReset();
    final (success, error) = await ref.read(authRepositoryProvider).sendEmailOTP(email);
    state = state.copyWith(hasError: !success, message: error?.message ?? '', isLoading: false);
  }

  Future<void> onSendPhoneOTP(String phone) async {
    _setLoadingAndReset();
    final (success, error) = await ref.read(authRepositoryProvider).sendPhoneOTP(phone);
    state = state.copyWith(hasError: !success, message: error?.message ?? '', isLoading: false);
  }

  Future<void> onVerifyEmailOTP(String email, String otp) async {
    _setLoadingAndReset();
    final (success, error) = await ref.read(authRepositoryProvider).verifyEmailOTP(email, otp);
    state = state.copyWith(hasError: !success, message: error?.message ?? '', isLoading: false);
  }

  Future<void> onVerifyphoneOTP(String phone, String otp) async {
    _setLoadingAndReset();
    final (success, error) = await ref.read(authRepositoryProvider).verifyphoneOTP(phone, otp);
    state = state.copyWith(hasError: !success, message: error?.message ?? '', isLoading: false);
  }

  Future<void> onLogout() async {
    _setLoadingAndReset();
    final (success, error) = await ref.read(authRepositoryProvider).logout();
    state = state.copyWith(hasError: !success, message: error?.message ?? '', isLoading: false);
  }
}
