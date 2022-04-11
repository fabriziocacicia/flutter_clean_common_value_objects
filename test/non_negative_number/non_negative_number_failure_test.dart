import 'package:flutter_clean_common_value_objects/src/non_negative_number/non_negative_number_failure.dart';
import 'package:flutter_clean_domain_test/flutter_clean_domain_test.dart';

void main() {
  final invalidValue = -1.0;
  final failure = NonNegativeNumberFailure(invalidValue: invalidValue);

  testValueFailure(invalidValue: invalidValue, failure: failure);
}
