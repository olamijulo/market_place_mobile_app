// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final Widget title;
  final String? subTitle;
  const AdBanner({
    super.key,
    required this.imageUrl,
    required this.tag,
    required this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(clipBehavior: Clip.none, children: [
        SizedBox(
          height: 200.0,
          width: double.infinity,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            scale: 9,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tag,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
              ),
              SizedBox(
                height: 5.0,
              ),
               title,
              subTitle != null
                  ? SizedBox(
                      height: 5.0,
                    )
                  : SizedBox.shrink(),
              SizedBox(
                width: 150.0,
                child: Text(
                  subTitle ?? '',
                  style: TextStyle(fontSize: 10.0, height: 1.5),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              SizedBox(
                height: 40.0,
                width: 120.0,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'Check this out',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    )),
              )
            ],
          ),
        )
      ]),
    );
  }
}
