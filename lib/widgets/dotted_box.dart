import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget dotted_box(Color color) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    ),
  );
}
