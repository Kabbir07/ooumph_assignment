import 'package:flutter/material.dart';
import 'package:ooumph_assingment/widgets/dotted_box.dart';

Widget IqCircle() {
  return Container(
    height: 50,
    width: 50,
    decoration: const BoxDecoration(shape: BoxShape.circle),
    child: Stack(
      children: [
        Positioned(top: 25, right: -8, child: dotted_box(Colors.purple)),
        Positioned(
            top: 14, right: -5, child: dotted_box(Colors.purple.shade600)),
        Positioned(top: 6, right: 2, child: dotted_box(Colors.purple.shade600)),
        Positioned(
            left: 1,
            top: 3,
            right: 0,
            child: dotted_box(Colors.purple.shade600)),
        Positioned(left: 3, top: 7, child: dotted_box(Colors.pink.shade400)),
        Positioned(left: -4, top: 15, child: dotted_box(Colors.pink.shade600)),
        Positioned(left: -6, top: 25, child: dotted_box(Colors.pink.shade700)),
        const Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: SizedBox(
              height: 6,
              width: 6,
              child: Center(
                child: Text(
                  "3.5",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
            ))
      ],
    ),
  );
}
