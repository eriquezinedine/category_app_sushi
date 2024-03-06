import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart' as c;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/core/shared/domain/repositories/i_history.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({
    required ILocalRepository iLocalRepository,
    required IHistory iHistory,
  })  : _iLocalRepository = iLocalRepository,
        _controller = TextEditingController(),
        _iHistory = iHistory,
        super(const ProfileState());

  final ILocalRepository _iLocalRepository;
  final IHistory _iHistory;
  final TextEditingController _controller;

  TextEditingController get controller => _controller;

  Future<void> getContact() async {
    if (await c.FlutterContacts.requestPermission()) {
      final contact = await FastContacts.getAllContacts();
      emit(
        state.copyWith(
          contacs: contact,
          contacsSearch: contact,
        ),
      );
    }
  }

  void search(String value) {
    final list = state.contacs
        .where((element) =>
            element.displayName.toUpperCase().contains(value.toUpperCase()))
        .toList();

    emit(state.copyWith(
      contacsSearch: value.isEmpty ? state.contacs : list,
    ));
  }

  void getData() {
    final dataPF = _iLocalRepository.getFavoriteProducts ?? {};
    final pFR = ProductResponse.fromJson({'products': dataPF.values.toList()});

    final dataPD = _iLocalRepository.getProductsUsed ?? {};
    final pFU = ProductResponse.fromJson({'products': dataPD.values.toList()});

    emit(state.copyWith(
      favorites: pFR.products,
      dones: pFU.products,
    ));
  }

  void getUser() {
    emit(state.copyWith(
      status: ProfileStatus.loading,
    ));
    final orders = _iLocalRepository.getOrders ?? {};
    final data = OrderResponse.fromJson({'orders': orders.values.toList()});
    log('Pokemon ${_iLocalRepository.getFavoriteProducts?.values} ');
    try {
      _iLocalRepository.getUser().then((user) {
        emit(state.copyWith(
          user: user,
          orders: data.orders,
          status: ProfileStatus.loaded,
        ));
        getData();
      });
    } catch (e) {
      emit(state.copyWith(
        status: ProfileStatus.error,
      ));
    }
  }

  Future<void> getDataHistory(String userEmail) async {
    final data = await _iHistory.getHistories(userEmail);
    for (var e in data) {
      _iLocalRepository.setOrder(e);
    }
    emit(state.copyWith(orders: data));
  }
}
