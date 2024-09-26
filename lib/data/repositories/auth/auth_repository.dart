import 'package:serveable_app/ui/config/helpers/custom_error.dart';

abstract class AuthRepository {
  Future<(bool, CustomError?)> sendEmailOTP(String email);
  Future<(bool, CustomError?)> sendPhoneOTP(String phone);

  Future<(bool, CustomError?)> verifyEmailOTP(String email, String otp);
  Future<(bool, CustomError?)> verifyphoneOTP(String phone, String otp);

  Future<(bool, CustomError?)> logout();
}
