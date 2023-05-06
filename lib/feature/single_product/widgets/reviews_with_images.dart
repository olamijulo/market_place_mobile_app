import 'package:flutter/material.dart';

class ReviewsWithImages extends StatelessWidget {
  const ReviewsWithImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Image.asset('assets/images/alex-haigh-fEt6Wd4t4j0-unsplash.jpg',
            fit: BoxFit.cover),
      ),
    );
  }
}