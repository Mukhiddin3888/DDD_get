// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UsersEntityTearOff {
  const _$UsersEntityTearOff();

  _UsersEntity call(
      {required UserNameString userName, required UserNameString name}) {
    return _UsersEntity(
      userName: userName,
      name: name,
    );
  }
}

/// @nodoc
const $UsersEntity = _$UsersEntityTearOff();

/// @nodoc
mixin _$UsersEntity {
  UserNameString get userName => throw _privateConstructorUsedError;
  UserNameString get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersEntityCopyWith<UsersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEntityCopyWith<$Res> {
  factory $UsersEntityCopyWith(
          UsersEntity value, $Res Function(UsersEntity) then) =
      _$UsersEntityCopyWithImpl<$Res>;
  $Res call({UserNameString userName, UserNameString name});
}

/// @nodoc
class _$UsersEntityCopyWithImpl<$Res> implements $UsersEntityCopyWith<$Res> {
  _$UsersEntityCopyWithImpl(this._value, this._then);

  final UsersEntity _value;
  // ignore: unused_field
  final $Res Function(UsersEntity) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserNameString,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserNameString,
    ));
  }
}

/// @nodoc
abstract class _$UsersEntityCopyWith<$Res>
    implements $UsersEntityCopyWith<$Res> {
  factory _$UsersEntityCopyWith(
          _UsersEntity value, $Res Function(_UsersEntity) then) =
      __$UsersEntityCopyWithImpl<$Res>;
  @override
  $Res call({UserNameString userName, UserNameString name});
}

/// @nodoc
class __$UsersEntityCopyWithImpl<$Res> extends _$UsersEntityCopyWithImpl<$Res>
    implements _$UsersEntityCopyWith<$Res> {
  __$UsersEntityCopyWithImpl(
      _UsersEntity _value, $Res Function(_UsersEntity) _then)
      : super(_value, (v) => _then(v as _UsersEntity));

  @override
  _UsersEntity get _value => super._value as _UsersEntity;

  @override
  $Res call({
    Object? userName = freezed,
    Object? name = freezed,
  }) {
    return _then(_UsersEntity(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserNameString,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as UserNameString,
    ));
  }
}

/// @nodoc

class _$_UsersEntity implements _UsersEntity {
  const _$_UsersEntity({required this.userName, required this.name});

  @override
  final UserNameString userName;
  @override
  final UserNameString name;

  @override
  String toString() {
    return 'UsersEntity(userName: $userName, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsersEntity &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UsersEntityCopyWith<_UsersEntity> get copyWith =>
      __$UsersEntityCopyWithImpl<_UsersEntity>(this, _$identity);
}

abstract class _UsersEntity implements UsersEntity {
  const factory _UsersEntity(
      {required UserNameString userName,
      required UserNameString name}) = _$_UsersEntity;

  @override
  UserNameString get userName => throw _privateConstructorUsedError;
  @override
  UserNameString get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UsersEntityCopyWith<_UsersEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
