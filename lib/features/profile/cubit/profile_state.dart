part of 'profile_cubit.dart';

enum ProfileStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default([]) List<Product> favorites,
    @Default([]) List<Product> dones,
    @Default(ProfileStatus.initial) ProfileStatus status,
    @Default([]) List<OrderRequest> orders,
    @Default([]) List<Contact> contacs,
    @Default([]) List<Contact> contacsSearch,
    User? user,
  }) = _ProfileState;
}
