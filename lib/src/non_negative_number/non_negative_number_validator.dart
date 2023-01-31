import 'package:dartz/dartz.dart';

import 'non_negative_number_failure.dart';

/// Validates a non-negative number.
Either<NonNegativeNumberFailure, num> validateNonNegativeDecimal(
    final num value) {
  if (value < 0 || !value.isFinite) {
    return Left(NonNegativeNumberFailure(invalidValue: value));
  }

  return Right(value);
}
