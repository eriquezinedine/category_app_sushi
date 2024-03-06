part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default(0.0) double currentIndex,
  }) = _CategoryState;
}
