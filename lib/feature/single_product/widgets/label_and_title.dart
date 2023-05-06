// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class LabelAndTitle extends StatelessWidget {
  final String label;
  final String title;

  const LabelAndTitle({
    super.key,
    required this.label,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            '$label:   ',
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Colors.black38),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Palette.black100),
          )
        ],
      ),
    );
  }
}
