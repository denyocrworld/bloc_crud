// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductFormState {
  String get photo => throw _privateConstructorUsedError;
  set photo(String value) => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  set productName(String value) => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  set price(double value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  set loading(bool value) => throw _privateConstructorUsedError;
  Product? get item => throw _privateConstructorUsedError;
  set item(Product? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFormStateCopyWith<ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormStateCopyWith<$Res> {
  factory $ProductFormStateCopyWith(
          ProductFormState value, $Res Function(ProductFormState) then) =
      _$ProductFormStateCopyWithImpl<$Res, ProductFormState>;
  @useResult
  $Res call(
      {String photo,
      String productName,
      double price,
      String description,
      bool loading,
      Product? item});

  $ProductCopyWith<$Res>? get item;
}

/// @nodoc
class _$ProductFormStateCopyWithImpl<$Res, $Val extends ProductFormState>
    implements $ProductFormStateCopyWith<$Res> {
  _$ProductFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? productName = null,
    Object? price = null,
    Object? description = null,
    Object? loading = null,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get item {
    if (_value.item == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.item!, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductFormStateCopyWith<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  factory _$$_ProductFormStateCopyWith(
          _$_ProductFormState value, $Res Function(_$_ProductFormState) then) =
      __$$_ProductFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String photo,
      String productName,
      double price,
      String description,
      bool loading,
      Product? item});

  @override
  $ProductCopyWith<$Res>? get item;
}

/// @nodoc
class __$$_ProductFormStateCopyWithImpl<$Res>
    extends _$ProductFormStateCopyWithImpl<$Res, _$_ProductFormState>
    implements _$$_ProductFormStateCopyWith<$Res> {
  __$$_ProductFormStateCopyWithImpl(
      _$_ProductFormState _value, $Res Function(_$_ProductFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
    Object? productName = null,
    Object? price = null,
    Object? description = null,
    Object? loading = null,
    Object? item = freezed,
  }) {
    return _then(_$_ProductFormState(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$_ProductFormState implements _ProductFormState {
  _$_ProductFormState(
      {this.photo = "",
      this.productName = "",
      this.price = 0,
      this.description = "",
      this.loading = false,
      this.item});

  @override
  @JsonKey()
  String photo;
  @override
  @JsonKey()
  String productName;
  @override
  @JsonKey()
  double price;
  @override
  @JsonKey()
  String description;
  @override
  @JsonKey()
  bool loading;
  @override
  Product? item;

  @override
  String toString() {
    return 'ProductFormState(photo: $photo, productName: $productName, price: $price, description: $description, loading: $loading, item: $item)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductFormStateCopyWith<_$_ProductFormState> get copyWith =>
      __$$_ProductFormStateCopyWithImpl<_$_ProductFormState>(this, _$identity);
}

abstract class _ProductFormState implements ProductFormState {
  factory _ProductFormState(
      {String photo,
      String productName,
      double price,
      String description,
      bool loading,
      Product? item}) = _$_ProductFormState;

  @override
  String get photo;
  set photo(String value);
  @override
  String get productName;
  set productName(String value);
  @override
  double get price;
  set price(double value);
  @override
  String get description;
  set description(String value);
  @override
  bool get loading;
  set loading(bool value);
  @override
  Product? get item;
  set item(Product? value);
  @override
  @JsonKey(ignore: true)
  _$$_ProductFormStateCopyWith<_$_ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
