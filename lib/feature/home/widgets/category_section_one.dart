// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:market_place_mobile_app/feature/home/home_controller.dart';

class CategorySectionOne extends ConsumerWidget {
  const CategorySectionOne({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ref.watch(homeProvider).sectionOneCategoryTile[index];
        },
        separatorBuilder: (context, index) => SizedBox(
              width: 30.0,
            ),
        itemCount: 5);
  }
}