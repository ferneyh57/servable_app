// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomError {
  final String? message;
  final int? code;
  CustomError({
    this.message = 'Error',
    this.code,
  });

  CustomError copyWith({
    String? message,
    int? code,
  }) {
    return CustomError(
      message: message ?? this.message,
      code: code ?? this.code,
    );
  }
}
