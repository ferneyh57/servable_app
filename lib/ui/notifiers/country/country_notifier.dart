// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serveable_app/ui/config/injector/di.dart';
import 'package:serveable_app/ui/notifiers/country/country_notifier_state.dart';

class CountryNotifier extends Notifier<CountryNotifierState> {
  @override
  CountryNotifierState build() {
    return const CountryNotifierState();
  }

  Future<void> getCountries() async {
    final countryRepository = ref.read(countryRepositoryProvider);
    state = state.copyWith(isLoading: true);
    final (countries, error) = await countryRepository.getCountries();
    state = state.copyWith(
      countries: countries ?? [],
      message: error.message ?? '',
      hasError: countries == null,
      isLoading: false,
    );
  }
}
