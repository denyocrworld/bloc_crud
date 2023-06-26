// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tiktok_user_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TiktokUserListState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TiktokUserListStateCopyWith<TiktokUserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TiktokUserListStateCopyWith<$Res> {
  factory $TiktokUserListStateCopyWith(
          TiktokUserListState value, $Res Function(TiktokUserListState) then) =
      _$TiktokUserListStateCopyWithImpl<$Res, TiktokUserListState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$TiktokUserListStateCopyWithImpl<$Res, $Val extends TiktokUserListState>
    implements $TiktokUserListStateCopyWith<$Res> {
  _$TiktokUserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TiktokUserListStateCopyWith<$Res>
    implements $TiktokUserListStateCopyWith<$Res> {
  factory _$$_TiktokUserListStateCopyWith(_$_TiktokUserListState value,
          $Res Function(_$_TiktokUserListState) then) =
      __$$_TiktokUserListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$_TiktokUserListStateCopyWithImpl<$Res>
    extends _$TiktokUserListStateCopyWithImpl<$Res, _$_TiktokUserListState>
    implements _$$_TiktokUserListStateCopyWith<$Res> {
  __$$_TiktokUserListStateCopyWithImpl(_$_TiktokUserListState _value,
      $Res Function(_$_TiktokUserListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$_TiktokUserListState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TiktokUserListState implements _TiktokUserListState {
  _$_TiktokUserListState({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'TiktokUserListState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TiktokUserListStateCopyWith<_$_TiktokUserListState> get copyWith =>
      __$$_TiktokUserListStateCopyWithImpl<_$_TiktokUserListState>(
          this, _$identity);
}

abstract class _TiktokUserListState implements TiktokUserListState {
  factory _TiktokUserListState({int counter}) = _$_TiktokUserListState;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$_TiktokUserListStateCopyWith<_$_TiktokUserListState> get copyWith =>
      throw _privateConstructorUsedError;
}
