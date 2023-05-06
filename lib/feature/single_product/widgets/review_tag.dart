import 'package:flutter/material.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class ReviewTag extends StatelessWidget {
  final String label;
  const ReviewTag({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
          color: Palette.green100.withOpacity(0.2),
          border: Border.all(color: Palette.green100),
          borderRadius: BorderRadius.all(Radius.circular(50.0))),
      child: Text(
        label,
        style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
            color: Palette.green100),
      ),
    );
  }
}