// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductSample extends StatelessWidget {
  const ProductSample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Image.asset(
          'assets/images/ryan-hoffman-6Nub980bI3I-unsplash.jpg',
          fit: BoxFit.cover,
        ));
  }
}