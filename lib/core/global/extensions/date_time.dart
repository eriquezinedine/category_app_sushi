import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  // String get dMMMM => DateFormat('d MMMM', ).format(this);
  String get dMMMM => DateFormat('dd/MM/yy').format(this);
  String get time => DateFormat('h:mm a').format(this);
}
