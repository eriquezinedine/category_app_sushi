// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  List<Ingredient> get ingredient => throw _privateConstructorUsedError;
  List<Ingredient> get selectedIngredients =>
      throw _privateConstructorUsedError;
  Category? get selectedCategory => throw _privateConstructorUsedError;
  List<Product> get productSearch => throw _privateConstructorUsedError;
  bool get isResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Ingredient> ingredient,
      List<Ingredient> selectedIngredients,
      Category? selectedCategory,
      List<Product> productSearch,
      bool isResult});

  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? selectedIngredients = null,
    Object? selectedCategory = freezed,
    Object? productSearch = null,
    Object? isResult = null,
  }) {
    return _then(_value.copyWith(
      ingredient: null == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      selectedIngredients: null == selectedIngredients
          ? _value.selectedIngredients
          : selectedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      productSearch: null == productSearch
          ? _value.productSearch
          : productSearch // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isResult: null == isResult
          ? _value.isResult
          : isResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Ingredient> ingredient,
      List<Ingredient> selectedIngredients,
      Category? selectedCategory,
      List<Product> productSearch,
      bool isResult});

  @override
  $CategoryCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredient = null,
    Object? selectedIngredients = null,
    Object? selectedCategory = freezed,
    Object? productSearch = null,
    Object? isResult = null,
  }) {
    return _then(_$InitialImpl(
      ingredient: null == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      selectedIngredients: null == selectedIngredients
          ? _value._selectedIngredients
          : selectedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as Category?,
      productSearch: null == productSearch
          ? _value._productSearch
          : productSearch // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isResult: null == isResult
          ? _value.isResult
          : isResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Ingredient> ingredient = const [],
      final List<Ingredient> selectedIngredients = const [],
      this.selectedCategory,
      final List<Product> productSearch = const [],
      this.isResult = false})
      : _ingredient = ingredient,
        _selectedIngredients = selectedIngredients,
        _productSearch = productSearch;

  final List<Ingredient> _ingredient;
  @override
  @JsonKey()
  List<Ingredient> get ingredient {
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredient);
  }

  final List<Ingredient> _selectedIngredients;
  @override
  @JsonKey()
  List<Ingredient> get selectedIngredients {
    if (_selectedIngredients is EqualUnmodifiableListView)
      return _selectedIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIngredients);
  }

  @override
  final Category? selectedCategory;
  final List<Product> _productSearch;
  @override
  @JsonKey()
  List<Product> get productSearch {
    if (_productSearch is EqualUnmodifiableListView) return _productSearch;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productSearch);
  }

  @override
  @JsonKey()
  final bool isResult;

  @override
  String toString() {
    return 'SearchState(ingredient: $ingredient, selectedIngredients: $selectedIngredients, selectedCategory: $selectedCategory, productSearch: $productSearch, isResult: $isResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality()
                .equals(other._selectedIngredients, _selectedIngredients) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality()
                .equals(other._productSearch, _productSearch) &&
            (identical(other.isResult, isResult) ||
                other.isResult == isResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ingredient),
      const DeepCollectionEquality().hash(_selectedIngredients),
      selectedCategory,
      const DeepCollectionEquality().hash(_productSearch),
      isResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SearchState {
  const factory _Initial(
      {final List<Ingredient> ingredient,
      final List<Ingredient> selectedIngredients,
      final Category? selectedCategory,
      final List<Product> productSearch,
      final bool isResult}) = _$InitialImpl;

  @override
  List<Ingredient> get ingredient;
  @override
  List<Ingredient> get selectedIngredients;
  @override
  Category? get selectedCategory;
  @override
  List<Product> get productSearch;
  @override
  bool get isResult;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
