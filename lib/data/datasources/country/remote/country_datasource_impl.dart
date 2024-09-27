import 'package:flutter/material.dart';
import 'package:serveable_app/data/datasources/country/country_datasource.dart';
import 'package:serveable_app/domain/models/country_model.dart';
import 'package:serveable_app/ui/config/helpers/custom_error.dart';
import 'package:dio/dio.dart';

class CountryDatasourceImpl implements CountryDatasource {
  final Dio dio;
  CountryDatasourceImpl({required this.dio});

  final _kRestCountriesGetEdnpoint = 'https://restcountries.com/v3.1/all?fields=name,flags,idd';
  @override
  Future<(List<CountryModel>?, CustomError)> getCountries() async {
    try {
      final response = await dio.get(_kRestCountriesGetEdnpoint);
      debugPrint('result ${response.data}');
      return (null, CustomError());
    } catch (e) {
      debugPrint('Error at CountryDatasourceImpl on getCountries');
      return (null, CustomError());
    }
  }
}
