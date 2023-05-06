import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_place_mobile_app/core/widgets/custom_dropdown_menu.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/rating_star_indicator.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/review_card.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/reviews_with_images.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Reviews & Ratings',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Palette.black100),
        ),
        SizedBox(
          height: 25.0,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '4.9',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        '/ 5.0',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                RatingBar(
                  initialRating: 4.5,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ignoreGestures: true,
                  ratingWidget: RatingWidget(
                    full: Icon(
                      Icons.star,
                      color: Color(0xFFFAA23B),
                    ),
                    half: Icon(
                      Icons.star_half,
                      color: Color(0xFFFAA23B),
                    ),
                    empty: Icon(
                      Icons.star_border_sharp,
                      color: Color(0xFFFAA23B),
                    ),
                  ),
                  itemSize: 23.0,
                  itemPadding:
                      EdgeInsets.symmetric(horizontal: 0.2),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  '2.3k+ Reviews',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                )
              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingStatsIndicator(
                  leadingLabel: '5',
                  trailingLabel: '1.5k',
                  indicatorValue: 0.8,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RatingStatsIndicator(
                  leadingLabel: '4',
                  trailingLabel: '710',
                  indicatorValue: 0.6,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RatingStatsIndicator(
                  leadingLabel: '3',
                  trailingLabel: '1.5k',
                  indicatorValue: 0.3,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RatingStatsIndicator(
                  leadingLabel: '2',
                  trailingLabel: '1.5k',
                  indicatorValue: 0.2,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RatingStatsIndicator(
                  leadingLabel: '1',
                  trailingLabel: '1.5k',
                  indicatorValue: 0.1,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          'Reviews with images and videos',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Palette.black100),
        ),
        SizedBox(
          height: 25.0,
        ),
        Row(
          children: [
            SizedBox(
              height: 80.0,
              width: 270.0,
              child: ListView.separated(
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ReviewsWithImages();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  itemCount: 3),
            ),
            Stack(
              children: [
                ReviewsWithImages(),
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(
                          Radius.circular(15.0))),
                  child: Center(
                    child: Text(
                      '132+',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Divider(),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Reviews',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Palette.black100),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Showing 3 of 2.3k Reviews',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: CustomDropdown(
                onChanged: (value) {},
                hintText: '',
                icon: FaIcon(
                  FontAwesomeIcons.angleDown,
                  size: 18.0,
                  color: Colors.black38,
                ),
                items: [
                  DropdownMenuItem(
                      child: Text(
                    'Popular',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 40.0,
        ),
        Expanded(
          child: ListView.separated(
              // physics: NeverScrollableScrollPhysics(),
              primary: false,
              itemBuilder: (context, index) {
                return ReviewCard(
                    userName: 'Olufunsho Adeleke',
                    rating: '5.0',
                    review:
                        'According to my expectations this is the best. Thank you');
              },
              separatorBuilder: (context, IndexError) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
              itemCount: 3),
        )
      ],
    );
  }
}
