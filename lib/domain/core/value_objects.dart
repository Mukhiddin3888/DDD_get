import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/core/common_interfaces.dart';
import 'package:ddd_get_stream_test/domain/core/errors.dart';
import 'package:ddd_get_stream_test/domain/core/failures.dart';
import 'package:meta/meta.dart';

//object equality ( obj1 == obj2 ? )

@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {

    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

