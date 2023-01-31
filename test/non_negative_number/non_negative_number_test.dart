import 'package:flutter_clean_common_value_objects/src/non_negative_number/non_negative_number.dart';
import 'package:flutter_clean_domain_test/flutter_clean_domain_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNonNegativeNumber extends Mock implements NonNegativeNumber {}

void main() {
  final validNonNegativeNumberValue = 1;
  final validNonNegativeNumber = NonNegativeNumber(validNonNegativeNumberValue);

  testValidValueObject<num>(
    object: validNonNegativeNumber,
    value: validNonNegativeNumberValue,
  );

  final invalidNonNegativeNumberValue = -1;
  final invalidNonNegativeNumber =
      NonNegativeNumber(invalidNonNegativeNumberValue);

  testInvalidValueObject(
    object: invalidNonNegativeNumber,
    value: invalidNonNegativeNumberValue,
  );
}
