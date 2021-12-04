part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {

  const factory UserState.initial() = Initial;

  const factory UserState.loadInProgress() = DataInProgress;

  const factory UserState.loadSuccess(List<UsersEntity> users) = LoadSuccess;

  const factory UserState.loadFailure(UserFailure userFailure) =LoadFailure;
}
