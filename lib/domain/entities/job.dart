// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:serveable_app/ui/config/enums/visibility_status_enum.dart';

class Job {
  final String title;
  final String description;
  final VisibilityStatusEnum visibilityStatus;
  final int applicantsAmount;
  final int publicationTimeStamp;
  final String city;
  final String countryCode;
  final SalaryTypeEnum salaryTypeEnum;
  final double? salaryFromAmunt;
  final double? salaryToAmount;
  Job({
    required this.title,
    required this.description,
    this.visibilityStatus = VisibilityStatusEnum.public,
    this.applicantsAmount = 0,
    required this.publicationTimeStamp,
    required this.city,
    required this.countryCode,
    this.salaryTypeEnum = SalaryTypeEnum.hidden,
    this.salaryFromAmunt,
    this.salaryToAmount,
  });
}

enum SalaryTypeEnum {
  hidden,
  hourly,
  daily,
  weekly,
  biweekly,
  monthly,
}
