
import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/core/failures.dart';
import 'package:ddd_get_stream_test/domain/core/value_objects.dart';
import 'package:ddd_get_stream_test/domain/core/value_validators.dart';

class UserNameString extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory UserNameString(String input) {
    return UserNameString._(
      validateStringNotEmpty(input),
    );
  }

  const UserNameString._(this.value);
}
