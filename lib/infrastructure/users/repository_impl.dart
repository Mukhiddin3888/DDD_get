


import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/users/i_user_repository.dart';
import 'package:ddd_get_stream_test/domain/users/user_failure.dart';
import 'package:ddd_get_stream_test/domain/users/users_entity.dart';
import 'package:dio/dio.dart';

class UserRepository implements IUserRepository {


  @override
  Future<Either<UserFailure, List<UsersEntity>>> getAll() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
      if(response.statusCode ==200){
        print(response.data);

        return right(response.data);

      }else{
        return left(const UserFailure.unableToUpdate());
      }

    } catch (e)  {
      return  left(const UserFailure.unexpected());

    }
  }

}
