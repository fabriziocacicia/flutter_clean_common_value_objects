import 'package:flutter_clean_domain/flutter_clean_domain.dart';

/// Represents a failure due to an invalid non-negative number.
///
/// It should occurs if trying to create a [NonNegativeNumber] with a negative
/// number.
class NonNegativeNumberFailure extends ValueFailure<num> {
  /// Creates an instance of [NonNegativeNumberFailure].
  NonNegativeNumberFailure({required num invalidValue})
      : super(invalidValue: invalidValue);
}
