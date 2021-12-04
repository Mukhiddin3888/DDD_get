import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/users/user_failure.dart';
import 'package:ddd_get_stream_test/infrastructure/users/user_dto.dart';


abstract class IUserRepository {
  Future<Either<UserFailure, List<UserDto>>> getAll();
}
