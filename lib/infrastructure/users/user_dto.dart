

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@JsonSerializable()
abstract class UserDto with _$UserDto{

  factory  UserDto({
    required int id,
    @JsonKey(name: 'username', defaultValue: '')
    required  String userName,
    @JsonKey(defaultValue: '')
    required String email,
}) = _UserDto;


  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

}

