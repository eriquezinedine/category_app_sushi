extension MapExtensionX on Map {
  // String get dMMMM => DateFormat('d MMMM', ).format(this);
  bool isEnable(String idProduct) => !(containsKey(idProduct));
}
