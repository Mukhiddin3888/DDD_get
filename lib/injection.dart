

import 'package:ddd_get_stream_test/application/user_bloc.dart';
import 'package:ddd_get_stream_test/domain/users/i_user_repository.dart';
import 'package:ddd_get_stream_test/infrastructure/users/repository_impl.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async{


  sl.registerFactory<UserBloc>(() => UserBloc(repository: sl()));


  sl.registerLazySingleton<IUserRepository>(() => UserRepository());

}
