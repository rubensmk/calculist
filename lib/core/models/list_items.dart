import 'package:flutter/material.dart';

class ListItem {
  String name;
  double value;
  int id;
  bool isChecked;

  ListItem({
    @required this.name,
    this.isChecked = false,
    this.value = 0,
    this.id,
  });
}
