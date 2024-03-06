import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc() : super(const CategoryState()) {
    on<_ChangeIndex>(_onChangeIndex);
  }

  late final PageController _categoryPageController;

  PageController get categoryPageController => _categoryPageController;

  double get currentPosition => _categoryPageController.page ?? 0;

  void initPageController() {
    _categoryPageController = PageController(viewportFraction: .8);

    _categoryPageController.addListener(() {
      final page = _categoryPageController.page ?? 0;
      add(CategoryEvent.changeIndex(page));
    });
  }

  Future<void> _onChangeIndex(
    _ChangeIndex event,
    Emitter<CategoryState> emit,
  ) async {
    emit(state.copyWith(currentIndex: event.pageIndex));
  }
}
