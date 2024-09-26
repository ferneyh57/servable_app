// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:serveable_app/data/datasources/auth/auth_datasource.dart';
import 'package:serveable_app/data/repositories/auth/auth_repository.dart';
import 'package:serveable_app/ui/config/helpers/custom_error.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource authDatasource;
  AuthRepositoryImpl({
    required this.authDatasource,
  });
  @override
  Future<(bool, CustomError?)> logout() async {
    return authDatasource.logout();
  }

  @override
  Future<(bool, CustomError?)> sendPhoneOTP(String cellphone) {
    return authDatasource.sendPhoneOTP(cellphone);
  }

  @override
  Future<(bool, CustomError?)> sendEmailOTP(String email) {
    return authDatasource.sendEmailOTP(email);
  }

  @override
  Future<(bool, CustomError?)> verifyphoneOTP(String cellphone, String otp) {
    return authDatasource.verifyphoneOTP(cellphone, otp);
  }

  @override
  Future<(bool, CustomError?)> verifyEmailOTP(String email, String otp) {
    return authDatasource.verifyEmailOTP(email, otp);
  }
}
