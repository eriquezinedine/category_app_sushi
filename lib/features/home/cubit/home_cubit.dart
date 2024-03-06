import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : _homePageController = PageController(),
        super(HomeState.initial());

  final PageController _homePageController;

  PageController get homePageController => _homePageController;

  void juntPage(int page) {
    _homePageController.jumpToPage(page);
  }
}
