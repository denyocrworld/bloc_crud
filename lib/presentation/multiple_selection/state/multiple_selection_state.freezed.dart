// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiple_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultipleSelectionState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  set categories(List<String> value) => throw _privateConstructorUsedError;
  List<int> get selectedIndexLists => throw _privateConstructorUsedError;
  set selectedIndexLists(List<int> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultipleSelectionStateCopyWith<MultipleSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleSelectionStateCopyWith<$Res> {
  factory $MultipleSelectionStateCopyWith(MultipleSelectionState value,
          $Res Function(MultipleSelectionState) then) =
      _$MultipleSelectionStateCopyWithImpl<$Res, MultipleSelectionState>;
  @useResult
  $Res call(
      {int counter, List<String> categories, List<int> selectedIndexLists});
}

/// @nodoc
class _$MultipleSelectionStateCopyWithImpl<$Res,
        $Val extends MultipleSelectionState>
    implements $MultipleSelectionStateCopyWith<$Res> {
  _$MultipleSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? selectedIndexLists = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndexLists: null == selectedIndexLists
          ? _value.selectedIndexLists
          : selectedIndexLists // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultipleSelectionStateCopyWith<$Res>
    implements $MultipleSelectionStateCopyWith<$Res> {
  factory _$$_MultipleSelectionStateCopyWith(_$_MultipleSelectionState value,
          $Res Function(_$_MultipleSelectionState) then) =
      __$$_MultipleSelectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int counter, List<String> categories, List<int> selectedIndexLists});
}

/// @nodoc
class __$$_MultipleSelectionStateCopyWithImpl<$Res>
    extends _$MultipleSelectionStateCopyWithImpl<$Res,
        _$_MultipleSelectionState>
    implements _$$_MultipleSelectionStateCopyWith<$Res> {
  __$$_MultipleSelectionStateCopyWithImpl(_$_MultipleSelectionState _value,
      $Res Function(_$_MultipleSelectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? categories = null,
    Object? selectedIndexLists = null,
  }) {
    return _then(_$_MultipleSelectionState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndexLists: null == selectedIndexLists
          ? _value.selectedIndexLists
          : selectedIndexLists // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_MultipleSelectionState implements _MultipleSelectionState {
  _$_MultipleSelectionState(
      {this.counter = 0,
      this.categories = const ["Main Course", "Drink", "Snack", "Ice Cream"],
      this.selectedIndexLists = const []});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  List<String> categories;
  @override
  @JsonKey()
  List<int> selectedIndexLists;

  @override
  String toString() {
    return 'MultipleSelectionState(counter: $counter, categories: $categories, selectedIndexLists: $selectedIndexLists)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultipleSelectionStateCopyWith<_$_MultipleSelectionState> get copyWith =>
      __$$_MultipleSelectionStateCopyWithImpl<_$_MultipleSelectionState>(
          this, _$identity);
}

abstract class _MultipleSelectionState implements MultipleSelectionState {
  factory _MultipleSelectionState(
      {int counter,
      List<String> categories,
      List<int> selectedIndexLists}) = _$_MultipleSelectionState;

  @override
  int get counter;
  set counter(int value);
  @override
  List<String> get categories;
  set categories(List<String> value);
  @override
  List<int> get selectedIndexLists;
  set selectedIndexLists(List<int> value);
  @override
  @JsonKey(ignore: true)
  _$$_MultipleSelectionStateCopyWith<_$_MultipleSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
