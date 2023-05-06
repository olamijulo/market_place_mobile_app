import 'package:flutter/material.dart';
import 'package:market_place_mobile_app/core/widgets/notification_indicator.dart';

class AppBarIcon extends StatelessWidget {
  final String iconUrl;
  final String label;
  const AppBarIcon({
    super.key,
    required this.iconUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(clipBehavior: Clip.none, children: [
        Image.asset(
          iconUrl,
          scale: 5,
        ),
        Positioned(
          left: 11.0,
          bottom: 16.0,
          child: NotificationIndicator(label: label),
        )
      ]),
    );
  }
}
