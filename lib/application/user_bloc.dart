
import 'package:bloc/bloc.dart';
import 'package:ddd_get_stream_test/domain/users/user_failure.dart';
import 'package:ddd_get_stream_test/domain/users/users_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'user_bloc.freezed.dart';


part 'user_event.dart';
part 'user_state.dart';


class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) ;
}
