// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_place_mobile_app/core/widgets/app_bar_icon.dart';
import 'package:market_place_mobile_app/core/widgets/custom_textfield.dart';
import 'package:market_place_mobile_app/core/widgets/product_card.dart';
import 'package:market_place_mobile_app/feature/home/home_controller.dart';
import 'package:market_place_mobile_app/feature/single_product/single_product_screen.dart';
import 'package:market_place_mobile_app/themes/palette.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.house),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.ticketSimple),
                ),
                label: 'Voucher'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.wallet),
                ),
                label: 'Wallet'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.gear),
                ),
                label: 'Settings')
          ]),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 470.0,
                backgroundColor: Colors.white,
                pinned: true,
                title: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45.0,
                        child: CustomTextfield(
                          prefix: Image.asset(
                            'assets/images/icons/magnifying-glass.png',
                            scale: 4,
                          ),
                          controller: TextEditingController(),
                          onTap: () {},
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      child: Row(
                        children: [
                          AppBarIcon(
                            iconUrl: 'assets/images/icons/bag.png',
                            label: '1',
                          ),
                          SizedBox(
                            width: 30.0,
                          ),
                          AppBarIcon(
                            iconUrl: 'assets/images/icons/bubble-chat.png',
                            label: '9+',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      SizedBox(
                        height: 120.0,
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 200.0,
                            child: PageView.builder(
                                controller:
                                    ref.watch(homeProvider).adBannerController,
                                itemCount:
                                    ref.watch(homeProvider).banner.length,
                                itemBuilder: (context, index) {
                                  return ref.watch(homeProvider).banner[index];
                                }),
                          ),
                          Positioned(
                            top: 15.0,
                            left: 350.0,
                            child: SmoothPageIndicator(
                              controller:
                                  ref.watch(homeProvider).adBannerController,
                              count: ref.watch(homeProvider).banner.length,
                              effect: ExpandingDotsEffect(
                                  activeDotColor: Palette.black100,
                                  dotHeight: 3.0,
                                  dotWidth: 5.0,
                                  spacing: 4.0),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 150.0,
                        child: PageView.builder(
                            controller: ref
                                .watch(homeProvider)
                                .categorySectionController,
                            itemCount:
                                ref.watch(homeProvider).categorySections.length,
                            itemBuilder: (context, index) {
                              return ref
                                  .watch(homeProvider)
                                  .categorySections[index];
                            }),
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller:
                              ref.watch(homeProvider).categorySectionController,
                          count:
                              ref.watch(homeProvider).categorySections.length,
                          effect: ExpandingDotsEffect(
                              activeDotColor: Palette.black100,
                              dotHeight: 3.0,
                              dotWidth: 5.0,
                              spacing: 4.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration:
                      BoxDecoration(color: Colors.black12.withOpacity(0.05)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Sale Product',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0),
                        ),
                        Text(
                          'See more',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                              color: Palette.green100),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 0.9,
                          mainAxisSpacing: 25.0,
                          crossAxisSpacing: 25.0),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          imageUrl:
                              'assets/images/alex-haigh-fEt6Wd4t4j0-unsplash.jpg',
                          title: 'Essentials Men\'s Shortsleeve',
                          tag: 'Shirt',
                          rating: '4.9 | 2356',
                          price: '\$12.00',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SingleProductScreen()));
                          },
                        );
                      },
                    ),
                  ]),
                ),
              )
            ],
          )),
    );
  }
}
