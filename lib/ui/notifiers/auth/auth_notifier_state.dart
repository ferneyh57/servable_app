import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_notifier_state.freezed.dart';

@freezed
class AuthNotifierState with _$AuthNotifierState {
  const factory AuthNotifierState({
    @Default(false) bool hasError,
    @Default(false) bool isLoading,
    @Default('') String message,
  }) = _AuthNotifierState;
}