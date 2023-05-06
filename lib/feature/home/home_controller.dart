// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:market_place_mobile_app/feature/home/home_state.dart';
import 'package:market_place_mobile_app/feature/home/widgets/ad_banner.dart';
import 'package:market_place_mobile_app/feature/home/widgets/category_section_one.dart';
import 'package:market_place_mobile_app/feature/home/widgets/category_section_two.dart';
import 'package:market_place_mobile_app/feature/home/widgets/category_tile.dart';

final homeProvider =
    StateNotifierProvider.autoDispose<HomeController, HomeState>((ref) {
  return HomeController(HomeState(
      adBannerController: PageController(),
      categorySectionController: PageController(),
      categorySections: [CategorySectionOne(), CategorySectionTwo()],
      sectionOneCategoryTile: [
        CategoryTile(
            label: 'Category', iconUrl: 'assets/images/icons/category.png'),
        CategoryTile(label: 'Bills', iconUrl: 'assets/images/icons/bill.png'),
        CategoryTile(
            label: 'Flight', iconUrl: 'assets/images/icons/flight-mode.png'),
        CategoryTile(
            label: 'Health', iconUrl: 'assets/images/icons/heart-beat.png'),
        CategoryTile(
            label: 'Jewelries', iconUrl: 'assets/images/icons/necklace.png'),
      ],
      sectionTwoCategoryTile: [
        CategoryTile(
            label: 'Shoes', iconUrl: 'assets/images/icons/sneakers.png'),
        CategoryTile(
            label: 'Electronics', iconUrl: 'assets/images/icons/responsive.png'),
        CategoryTile(
            label: 'Gaming', iconUrl: 'assets/images/icons/console.png'),
        CategoryTile(
            label: 'Appliances', iconUrl: 'assets/images/icons/appliances.png'),
        CategoryTile(
            label: 'Household', iconUrl: 'assets/images/icons/household.png')
      ],
      banner: [
        AdBanner(
          imageUrl: 'assets/images/priscilla-du-preez-dlxLGIy-2VU-unsplash.jpg',
          tag: '#FASHION DAY',
          title: Text(
            '80% OFF',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
          subTitle: 'Discover Fashion that suits to your style',
        ),
        AdBanner(
          imageUrl: 'assets/images/alyssa-strohmann-TS--uNw-JqE-unsplash.jpg',
          tag: '#FASHION DAY',
          title: SizedBox(
            width: 230.0,
            child: Text(
              'DISCOVER OUR BEAUTY SELECTION',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
        ),
        AdBanner(
          imageUrl: 'assets/images/charlota-blunarova-r5xHI_H44aM-unsplash.jpg',
          tag: '#FASHION DAY',
          title: Text(
            'DISCOVER OUR BEAUTY SELECTION',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          subTitle: 'Discover Fashion that suits to your style',
        )
      ],
      searchEditingController: TextEditingController()));
});

class HomeController extends StateNotifier<HomeState> {
  HomeController(super.state);
}
