// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:market_place_mobile_app/feature/home/widgets/ad_banner.dart';
import 'package:market_place_mobile_app/feature/home/widgets/category_tile.dart';

class HomeState {
  final PageController adBannerController;
    final PageController categorySectionController;

  final List<AdBanner> banner;
  final TextEditingController searchEditingController;
  final List<Widget> categorySections;
  final List<CategoryTile> sectionOneCategoryTile;
  final List<CategoryTile> sectionTwoCategoryTile;

  HomeState({
    required this.adBannerController,
    required this.categorySectionController,
    required this.banner,
    required this.searchEditingController,
    required this.categorySections,
    required this.sectionOneCategoryTile,
    required this.sectionTwoCategoryTile,
  });

  HomeState copyWith({
    PageController? adBannerController,
    PageController? categorySectionController,
    List<AdBanner>? banner,
    TextEditingController? searchEditingController,
    List<Widget>? categorySections,
    List<CategoryTile>? sectionOneCategoryTile,
    List<CategoryTile>? sectionTwoCategoryTile,
  }) {
    return HomeState(
      adBannerController: adBannerController ?? this.adBannerController,
      categorySectionController: categorySectionController ?? this.categorySectionController,
      banner: banner ?? this.banner,
      searchEditingController: searchEditingController ?? this.searchEditingController,
      categorySections: categorySections ?? this.categorySections,
      sectionOneCategoryTile: sectionOneCategoryTile ?? this.sectionOneCategoryTile,
      sectionTwoCategoryTile: sectionTwoCategoryTile ?? this.sectionTwoCategoryTile,
    );
  }
}
