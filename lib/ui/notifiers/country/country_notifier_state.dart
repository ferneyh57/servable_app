import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serveable_app/domain/models/country_model.dart';
part 'country_notifier_state.freezed.dart';


@freezed
class CountryNotifierState with _$CountryNotifierState {
  const factory CountryNotifierState({
    @Default(false) bool hasError,
    @Default(false) bool isLoading,
    @Default('') String message,
    @Default([]) List<CountryModel> countries,
  }) = _CountryNotifierState;

}