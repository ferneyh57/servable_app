// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:serveable_app/ui/config/helpers/custom_error.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:serveable_app/data/datasources/auth/auth_datasource.dart';

class AuthSupabaseDatasourceImpl implements AuthDatasource {
  final SupabaseClient supabaseClient;
  AuthSupabaseDatasourceImpl({
    required this.supabaseClient,
  });

  @override
  Future<(bool, CustomError?)> logout() async {
    try {
      await supabaseClient.auth.signOut();
      return (false, null);
    } catch (e) {
      debugPrint('error at AuthSupabaseDatasourceImpl on logout $e');
      return (false, CustomError());
    }
  }

  @override
  Future<(bool, CustomError?)> sendPhoneOTP(String cellphone) async {
    try {
      await supabaseClient.auth.signInWithOtp(phone: cellphone);
      return (false, null);
    } catch (e) {
      debugPrint('error at AuthSupabaseDatasourceImpl on signInWithCellphoneOTP $e');
      return (false, CustomError());
    }
  }

  @override
  Future<(bool, CustomError?)> sendEmailOTP(String email) async {
    try {
      await supabaseClient.auth.signInWithOtp(email: email);
      return (false, null);
    } catch (e) {
      debugPrint('error at AuthSupabaseDatasourceImpl on signInWithEmailOTP $e');
      return (false, CustomError());
    }
  }

  @override
  Future<(bool, CustomError?)> verifyphoneOTP(String cellphone, String otp) async {
    try {
      await supabaseClient.auth.verifyOTP(phone: cellphone, token: otp, type: OtpType.sms);
      return (false, null);
    } catch (e) {
      debugPrint('error at AuthSupabaseDatasourceImpl on verifyCellphoneOTP $e');
      return (false, CustomError());
    }
  }

  @override
  Future<(bool, CustomError?)> verifyEmailOTP(String email, String otp) async {
    try {
      await supabaseClient.auth.verifyOTP(email: email, token: otp, type: OtpType.signup);
      return (false, null);
    } catch (e) {
      debugPrint('error at AuthSupabaseDatasourceImpl on verifyEmailOTP $e');
      return (false, CustomError());
    }
  }
}
