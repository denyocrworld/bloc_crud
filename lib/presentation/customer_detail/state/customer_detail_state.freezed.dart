// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerDetailState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerDetailStateCopyWith<CustomerDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailStateCopyWith<$Res> {
  factory $CustomerDetailStateCopyWith(
          CustomerDetailState value, $Res Function(CustomerDetailState) then) =
      _$CustomerDetailStateCopyWithImpl<$Res, CustomerDetailState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$CustomerDetailStateCopyWithImpl<$Res, $Val extends CustomerDetailState>
    implements $CustomerDetailStateCopyWith<$Res> {
  _$CustomerDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CustomerDetailStateCopyWith<$Res>
    implements $CustomerDetailStateCopyWith<$Res> {
  factory _$$_CustomerDetailStateCopyWith(_$_CustomerDetailState value,
          $Res Function(_$_CustomerDetailState) then) =
      __$$_CustomerDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$_CustomerDetailStateCopyWithImpl<$Res>
    extends _$CustomerDetailStateCopyWithImpl<$Res, _$_CustomerDetailState>
    implements _$$_CustomerDetailStateCopyWith<$Res> {
  __$$_CustomerDetailStateCopyWithImpl(_$_CustomerDetailState _value,
      $Res Function(_$_CustomerDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$_CustomerDetailState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CustomerDetailState implements _CustomerDetailState {
  _$_CustomerDetailState({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'CustomerDetailState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDetailStateCopyWith<_$_CustomerDetailState> get copyWith =>
      __$$_CustomerDetailStateCopyWithImpl<_$_CustomerDetailState>(
          this, _$identity);
}

abstract class _CustomerDetailState implements CustomerDetailState {
  factory _CustomerDetailState({int counter}) = _$_CustomerDetailState;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDetailStateCopyWith<_$_CustomerDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
