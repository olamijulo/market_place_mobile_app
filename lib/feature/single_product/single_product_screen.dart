// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:market_place_mobile_app/core/widgets/app_bar_icon.dart';
import 'package:market_place_mobile_app/core/widgets/custom_dropdown_menu.dart';
import 'package:market_place_mobile_app/core/widgets/product_card.dart';
import 'package:market_place_mobile_app/feature/single_product/single_product_controller.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/about_item_tab.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/product_sample.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/rating_star_indicator.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/reviews_tab.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/reviews_with_images.dart';
import 'package:market_place_mobile_app/themes/palette.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SingleProductScreen extends ConsumerWidget {
  const SingleProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                LikeButton(
                  size: 20.0,
                  circleColor: CircleColor(
                      start: Palette.green100, end: Palette.green100),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Color(0xff33b5e5),
                    dotSecondaryColor: Color(0xff0099cc),
                  ),
                  likeBuilder: (bool isLiked) {
                    return FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: isLiked ? Palette.red100 : Palette.black100,
                      size: 25.0,
                    );
                  },
                ),
                SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.share,
                  size: 30.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                AppBarIcon(iconUrl: 'assets/images/icons/bag.png', label: '1'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '\$12.00',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Palette.green100),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 70.0,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Palette.green100,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0)))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/icons/bag_white.png',
                                scale: 7,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50.0,
                    width: 120.0,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)))),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Buy Now',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  height: 300.0,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/ryan-hoffman-6Nub980bI3I-unsplash.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 300.0,
                      width: 50.0,
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          separatorBuilder: (context, index) => SizedBox(
                                height: 10.0,
                              ),
                          itemBuilder: (context, index) {
                            return ProductSample();
                          }),
                    )
                  ]),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.store,
                        color: Colors.black38, size: 19.0),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Thrifting Store',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Essentials Men\'s Shortsleeve',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Palette.black100),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFFAA23B),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '4.9 Ratings',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FaIcon(FontAwesomeIcons.solidCircle,
                        size: 5.0, color: Colors.black26),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '2.3k+ Reviews',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FaIcon(FontAwesomeIcons.solidCircle,
                        size: 5.0, color: Colors.black26),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '2.9k Sold',
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                TabBar(indicatorColor: Palette.green100, tabs: [
                  Tab(
                    text: 'About Item',
                  ),
                  Tab(text: 'Reviews')
                ]),
                SizedBox(
                  height: 1000.0,
                  child: TabBarView(children: [AboutItemTab(), ReviewsTab()]),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
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
                  height: 25.0,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  primary: true,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 25.0,
                      crossAxisSpacing: 25.0),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageUrl:
                          'assets/images/alex-haigh-fEt6Wd4t4j0-unsplash.jpg',
                      title: 'Essentials Men\'s Shortsleeve',
                      tag: 'Shirt',
                      rating: '4.9 | 2356',
                      price: '\$12.00',
                      onTap: () {},
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
