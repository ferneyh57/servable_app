// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:serveable_app/ui/config/enums/visibility_status_enum.dart';

class User {
  final String uid;
  final String name;
  final String surname;
  final String? email;
  final String? phone;
  final String? pushToken;
  final int? age;
  final String countryCode;
  final VisibilityStatusEnum visibilityStatus;
  final String? profileImageUrl;
  User({
    required this.uid,
    required this.name,
    required this.surname,
    this.email,
    this.phone,
    this.pushToken,
    this.age,
    required this.countryCode,
    this.visibilityStatus = VisibilityStatusEnum.public,
    this.profileImageUrl,
  });
}
