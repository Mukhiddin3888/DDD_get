import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/core/failures.dart';


Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}