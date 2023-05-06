import 'package:flutter/material.dart';
import 'package:market_place_mobile_app/themes/palette.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RatingStatsIndicator extends StatelessWidget {
  final String leadingLabel;
  final String trailingLabel;
  final double indicatorValue;

  const RatingStatsIndicator({
    super.key,
    required this.leadingLabel,
    required this.trailingLabel,
    required this.indicatorValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 23.0,
          color: Color(0xFFFAA23B),
        ),
        SizedBox(
          width: 5.0,
        ),
        Text(
          leadingLabel,
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black38,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10.0,
        ),
        LinearPercentIndicator(
          width: 190.0,
          lineHeight: 14.0,
          percent: indicatorValue,
          barRadius: Radius.circular(50.0),
          backgroundColor: Colors.black12,
          progressColor: Palette.green100,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          trailingLabel,
          style: TextStyle(
              fontSize: 14.0,
              color: Palette.black100,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
