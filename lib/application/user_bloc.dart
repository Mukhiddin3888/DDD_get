
import 'package:bloc/bloc.dart';
import 'package:ddd_get_stream_test/domain/users/i_user_repository.dart';
import 'package:ddd_get_stream_test/domain/users/user_failure.dart';
import 'package:ddd_get_stream_test/domain/users/users_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'user_bloc.freezed.dart';


part 'user_event.dart';
part 'user_state.dart';


class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({ required this.repository}) : super(const UserState.initial()) ;
  final IUserRepository repository;



  @override
  Stream<UserState> mapEventToState(
      UserEvent event,
      ) async* {
    yield const UserState.loadInProgress();
    final possibleFailure = await repository.getAll();
    yield possibleFailure.fold(
          (f) => UserState.loadFailure(f),
          (users) =>  UserState.loadSuccess(users),
    );
  }
}
