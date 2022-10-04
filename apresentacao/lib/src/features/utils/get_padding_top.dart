import 'package:flutter/material.dart';

double getPaddingTop(BuildContext context) {
  EdgeInsets _devicePadding = MediaQuery.of(context).padding;
  const double _appBarHeight = 50.0;

  return _devicePadding.top + _appBarHeight;
}
