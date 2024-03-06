extension StringX on String {
  String get getNumb {
    final data = replaceAll(' ', '');

    return data.replaceAll(RegExp(r'[^0-9\+]'), '');
  }

  bool get isAdd {
    return contains('+');
  }
  // String get dMMMM => DateFormat('d MMMM', ).format(this);
  // String get dMMMM => DateFormat('dd/MM/yy').format(this);
  // String get time => DateFormat('h:mm a').format(this);
}
