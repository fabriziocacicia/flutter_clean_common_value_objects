import 'package:dartz/dartz.dart';
import 'package:flutter_clean_common_value_objects/src/non_negative_number/non_negative_number_failure.dart';
import 'package:flutter_clean_common_value_objects/src/non_negative_number/non_negative_number_validator.dart';
import 'package:flutter_clean_domain_test/flutter_clean_domain_test.dart';
import 'package:test/test.dart';

main() {
  valueFailureFactory(invalidValue) =>
      NonNegativeNumberFailure(invalidValue: invalidValue);

  testValidatorOnValidValues<num>(
    'zero',
    validator: validateNonNegativeDecimal,
    validValues: [0, 0.0],
  );

  testValidatorOnValidValues<num>(
    'positive integers',
    validator: validateNonNegativeDecimal,
    validValues: <int>[1, 10, 100, 1000],
  );

  testValidatorOnValidValues<num>(
    'positive decimals',
    validator: validateNonNegativeDecimal,
    validValues: <double>[
      0.15,
      1.0,
      1.64,
      10.0,
      12.43,
      100.0,
      149.3,
      1000.0,
      12394.234,
    ],
  );

  testValidatorOnInvalidValue<num>(
    'should return a Left when infinity is passed',
    validator: validateNonNegativeDecimal,
    invalidValue: double.infinity,
    valueFailureFactory: valueFailureFactory,
  );

  test('should return a Left when nan is passed', () {
    // arrange
    final value = double.nan;

    // act
    final validationResult = validateNonNegativeDecimal(value);

    //assert
    expect(validationResult, isA<Left>());
  });

  testValidatorOnInvalidValues<num>(
    'negative integers',
    validator: validateNonNegativeDecimal,
    invalidValues: <int>[-1, -4, -10, -13, -100, -123, -1000],
    valueFailureFactory: valueFailureFactory,
  );

  testValidatorOnInvalidValues<num>(
    'negative decimals',
    validator: validateNonNegativeDecimal,
    invalidValues: <double>[
      -1.0,
      -1.5,
      -10.0,
      -10.43,
      -13.0,
      -100.0,
      -100.22,
      -123.32,
      -1000.0,
      -1000.23
    ],
    valueFailureFactory: valueFailureFactory,
  );
}
