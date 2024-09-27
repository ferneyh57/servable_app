// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:serveable_app/data/datasources/country/country_datasource.dart';
import 'package:serveable_app/data/repositories/country/country_repository.dart';
import 'package:serveable_app/domain/models/country_model.dart';
import 'package:serveable_app/ui/config/helpers/custom_error.dart';

class CountryRepositoryImpl extends CountryRepository {
  final CountryDatasource countryDatasource;
  CountryRepositoryImpl({
    required this.countryDatasource,
  });
  @override
  Future<(List<CountryModel>?, CustomError)> getCountries() {
    return countryDatasource.getCountries();
  }
}
