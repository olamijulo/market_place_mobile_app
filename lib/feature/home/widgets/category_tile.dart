// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class CategoryTile extends StatelessWidget {
  final String label;
  final String iconUrl;

  const CategoryTile({
    super.key,
    required this.label,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Image.asset(iconUrl),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 13.0, color: Palette.black100.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}
