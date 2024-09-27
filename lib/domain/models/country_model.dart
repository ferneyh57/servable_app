import 'package:serveable_app/domain/entities/country.dart';

class CountryModel extends Country {
  CountryModel({required super.name, required super.code, required super.flag});

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name']['common'],
      flag: json['flags']['png'],
      code: json['idd']['root'],
    );
  }
}
