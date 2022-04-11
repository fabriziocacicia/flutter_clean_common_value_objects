import 'package:flutter_clean_common_value_objects/flutter_clean_common_value_objects.dart';

void main() {
  final validNonNegativeNumber = NonNegativeNumber(10);
  print(validNonNegativeNumber.value);
  print(validNonNegativeNumber.isValid());
  print(validNonNegativeNumber.getOrCrash());
  final invalidNonNegativeNumber = NonNegativeNumber(-1);
  print(invalidNonNegativeNumber.value);
  print(invalidNonNegativeNumber.isValid());
  try {
    print(invalidNonNegativeNumber.getOrCrash());
  } catch (e) {
    print(e);
  }
}
