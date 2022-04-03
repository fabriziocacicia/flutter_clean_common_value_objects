import 'package:flutter_clean_domain/flutter_clean_domain.dart';

class NonNegativeNumberFailure extends ValueFailure<num> {
  NonNegativeNumberFailure({required num invalidValue})
      : super(invalidValue: invalidValue);
}
