part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.changeIndex(double pageIndex) = _ChangeIndex;
}
