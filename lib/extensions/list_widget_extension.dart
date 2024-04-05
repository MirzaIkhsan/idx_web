import 'package:flutter/material.dart';

extension ListWidget on List<Widget> {
  List<Widget> separateVertically(double space) {
    if (length <= 1) return this;
    return sublist(1).fold([first], (r, element) {
      return [
        ...r,
        SizedBox(height: space),
        element,
      ];
    });
  }

  List<Widget> separateHorizontallly(double space) {
    if (length <= 1) return this;
    return sublist(1).fold([first], (r, element) {
      return [
        ...r,
        SizedBox(width: space),
        element,
      ];
    });
  }
}
