// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerFormState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerFormStateCopyWith<CustomerFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFormStateCopyWith<$Res> {
  factory $CustomerFormStateCopyWith(
          CustomerFormState value, $Res Function(CustomerFormState) then) =
      _$CustomerFormStateCopyWithImpl<$Res, CustomerFormState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CustomerFormStateCopyWithImpl<$Res, $Val extends CustomerFormState>
    implements $CustomerFormStateCopyWith<$Res> {
  _$CustomerFormStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CustomerFormStateCopyWith<$Res>
    implements $CustomerFormStateCopyWith<$Res> {
  factory _$$_CustomerFormStateCopyWith(_$_CustomerFormState value,
          $Res Function(_$_CustomerFormState) then) =
      __$$_CustomerFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$_CustomerFormStateCopyWithImpl<$Res>
    extends _$CustomerFormStateCopyWithImpl<$Res, _$_CustomerFormState>
    implements _$$_CustomerFormStateCopyWith<$Res> {
  __$$_CustomerFormStateCopyWithImpl(
      _$_CustomerFormState _value, $Res Function(_$_CustomerFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$_CustomerFormState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CustomerFormState implements _CustomerFormState {
  _$_CustomerFormState({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'CustomerFormState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerFormStateCopyWith<_$_CustomerFormState> get copyWith =>
      __$$_CustomerFormStateCopyWithImpl<_$_CustomerFormState>(
          this, _$identity);
}

abstract class _CustomerFormState implements CustomerFormState {
  factory _CustomerFormState({int counter}) = _$_CustomerFormState;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$_CustomerFormStateCopyWith<_$_CustomerFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
