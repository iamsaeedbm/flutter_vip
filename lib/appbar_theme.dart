import 'package:flutter/material.dart';

PreferredSizeWidget getAppBartheme(title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
    backgroundColor: Colors.blueGrey,
  );
}
