import 'package:serveable_app/domain/models/country_model.dart';
import 'package:serveable_app/ui/config/helpers/custom_error.dart';

abstract class CountryRepository {
  Future<(List<CountryModel>?, CustomError)> getCountries();
}
