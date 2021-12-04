

import 'package:ddd_get_stream_test/domain/users/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_entity.freezed.dart';

@freezed
abstract class UsersEntity with _$UsersEntity{

  const factory UsersEntity({
    required UserNameString userName,
    required UserNameString name,
}) = _UsersEntity;

  factory UsersEntity.empty() => UsersEntity(
      userName: UserNameString('UserName'),
      name: UserNameString('Name'));
}
