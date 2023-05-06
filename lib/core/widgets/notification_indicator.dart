// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class NotificationIndicator extends StatelessWidget {
  final String label;
  const NotificationIndicator({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.0,
      width: 17.0,
      decoration: BoxDecoration(
          color: Palette.red100,
          borderRadius: BorderRadius.all(Radius.circular(3.0))),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              fontSize: 9.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}