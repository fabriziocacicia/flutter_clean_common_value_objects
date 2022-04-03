import 'package:dartz/dartz.dart';
import 'package:flutter_clean_common_value_objects/src/non_negative_number/non_negative_number_validator.dart';
import 'package:flutter_clean_domain/flutter_clean_domain.dart';
import 'package:meta/meta.dart';

import 'non_negative_number_failure.dart';

class NonNegativeNumber extends ValueObject<num> {
  final Either<NonNegativeNumberFailure, num> _value;

  @override
  Either<NonNegativeNumberFailure, num> get value => _value;

  /// Constructs a [NonNegativeNumber] object from an [Either].
  ///
  /// Intended to be use for sub-classes only.
  @protected
  const NonNegativeNumber._fromEither(
      Either<NonNegativeNumberFailure, num> value)
      : _value = value;

  /// Constructs a [NonNegativeNumber] object.
  factory NonNegativeNumber(num value) {
    return NonNegativeNumber._fromEither(validateNonNegativeDecimal(value));
  }
}
