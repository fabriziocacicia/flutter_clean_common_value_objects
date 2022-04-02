import 'package:dartz/dartz.dart';
import 'package:flutter_clean_domain/flutter_clean_domain.dart';

import 'non_negative_number_failure.dart';

Either<ValueFailure<num>, num> validateNonNegativeDecimal(final num value) {
  if (value < 0 || !value.isFinite) {
    return Left(NonNegativeNumberFailure(invalidValue: value));
  }

  return Right(value);
}
