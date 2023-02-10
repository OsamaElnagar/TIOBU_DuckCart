import 'package:flutter/material.dart';

class DuckPadding {
  static const mainPadding = 20;
  static mainDuckPadding({l, r, t, b, child}) {
    return Padding(
      padding: EdgeInsets.only(
        left: l ?? 20,
        right: r ?? 20,
        top: t ?? 20,
        bottom: b ?? 20,
      ),
      child: child,
    );
  }
}
