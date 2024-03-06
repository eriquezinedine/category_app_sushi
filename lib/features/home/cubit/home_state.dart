part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Duration? timeRemaining,
    int? value,
    int? countdown,
  }) = _HomeState;
  factory HomeState.initial() => const _HomeState();
}
