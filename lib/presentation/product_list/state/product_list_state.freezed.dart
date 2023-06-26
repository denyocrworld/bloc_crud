// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductListState {
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;
  List<Product> get items => throw _privateConstructorUsedError;
  set items(List<Product> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductListStateCopyWith<ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListStateCopyWith<$Res> {
  factory $ProductListStateCopyWith(
          ProductListState value, $Res Function(ProductListState) then) =
      _$ProductListStateCopyWithImpl<$Res, ProductListState>;
  @useResult
  $Res call({bool loading, List<Product> items});
}

/// @nodoc
class _$ProductListStateCopyWithImpl<$Res, $Val extends ProductListState>
    implements $ProductListStateCopyWith<$Res> {
  _$ProductListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductListStateCopyWith<$Res>
    implements $ProductListStateCopyWith<$Res> {
  factory _$$_ProductListStateCopyWith(
          _$_ProductListState value, $Res Function(_$_ProductListState) then) =
      __$$_ProductListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<Product> items});
}

/// @nodoc
class __$$_ProductListStateCopyWithImpl<$Res>
    extends _$ProductListStateCopyWithImpl<$Res, _$_ProductListState>
    implements _$$_ProductListStateCopyWith<$Res> {
  __$$_ProductListStateCopyWithImpl(
      _$_ProductListState _value, $Res Function(_$_ProductListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
  }) {
    return _then(_$_ProductListState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductListState implements _ProductListState {
  _$_ProductListState({this.loading = false, this.items = const []});

  @override
  @JsonKey()
  bool loading;
  @override
  @JsonKey()
  List<Product> items;

  @override
  String toString() {
    return 'ProductListState(loading: $loading, items: $items)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductListStateCopyWith<_$_ProductListState> get copyWith =>
      __$$_ProductListStateCopyWithImpl<_$_ProductListState>(this, _$identity);
}

abstract class _ProductListState implements ProductListState {
  factory _ProductListState({bool loading, List<Product> items}) =
      _$_ProductListState;

  @override
  bool get loading;
  set loading(bool value);
  @override
  List<Product> get items;
  set items(List<Product> value);
  @override
  @JsonKey(ignore: true)
  _$$_ProductListStateCopyWith<_$_ProductListState> get copyWith =>
      throw _privateConstructorUsedError;
}
