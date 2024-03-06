import 'package:flutter/material.dart';

extension BuilcontextX on BuildContext {
  void navigate(Widget widget) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void navigateReplacement(Widget widget) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  void get pop => Navigator.pop(this);
}
