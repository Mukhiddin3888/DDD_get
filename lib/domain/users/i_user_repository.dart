import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/users/user_failure.dart';
import 'package:ddd_get_stream_test/domain/users/users_entity.dart';


abstract class IUserRepository {
  Future<Either<UserFailure, List<UsersEntity>>> getAll();
}
