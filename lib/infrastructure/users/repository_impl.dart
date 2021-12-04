


import 'package:dartz/dartz.dart';
import 'package:ddd_get_stream_test/domain/users/i_user_repository.dart';
import 'package:ddd_get_stream_test/domain/users/user_failure.dart';
import 'package:ddd_get_stream_test/infrastructure/users/user_dto.dart';
import 'package:dio/dio.dart';

class UserRepository implements IUserRepository {


  @override
  Future<Either<UserFailure, List<UserDto>>> getAll() async {
    print('kfvnkjlds');

    Dio dio = Dio(BaseOptions(
      connectTimeout: 35000,
      receiveTimeout: 33000,
      followRedirects: false,
    ));
    try {
      var response = await dio.get('https://jsonplaceholder.typicode.com/users');
      if(response.statusCode ==200){

        List<UserDto> users = (response.data as List)
            .map(
              (e) => UserDto.fromJson(e as Map<String, dynamic>),
        )
            .toList();

        return right(users);

      }else{
        return left(const UserFailure.unableToUpdate());
      }

    } catch (e)  {
      return  left(const UserFailure.unexpected());

    }
  }

}
