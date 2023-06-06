
import 'package:flutter/material.dart';

import 'enum.dart';

class BD {
  static final BD _instance = BD._internal();

  factory BD() {
    return _instance;
  }

  BD._internal();

  decoration(
          {Color? color,
          BorderRadius? borderRadius,
          List<BoxShadow>? boxShadow,
           Gradient?gradient,
            BoxShape?shape,
          Border? border}) =>
      BoxDecoration(
          color: color,
          borderRadius: borderRadius,
          border: border,
          shape:shape?? BoxShape.rectangle,
          gradient: gradient,
          boxShadow: boxShadow);
}
