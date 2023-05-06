import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:market_place_mobile_app/feature/single_product/single_product_controller.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/review_tag.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class ReviewCard extends ConsumerWidget {
  final String review;
  final String rating;
  final String userName;
  final String? imageUrl;
  const ReviewCard({
    super.key,
    required this.review,
    required this.rating,
    required this.userName,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          color: Colors.black26, shape: BoxShape.circle),
                      child: imageUrl == null
                          ? Icon(
                              Icons.person,
                              color: Colors.black38,
                            )
                          : Image.asset(imageUrl!, fit: BoxFit.cover),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      userName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 23.0,
                      color: Color(0xFFFAA23B),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      size: 40.0,
                      color: Colors.black38,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              SizedBox(
                height: 30.0,
                width: 415.0,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ReviewTag(
                          label: ref
                              .watch(singleProductProvider)
                              .reviewTag[index]);
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10.0,
                        ),
                    itemCount:
                        ref.watch(singleProductProvider).reviewTag.length),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            review,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_sharp,
                    color: Palette.green100,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Helpful ?',
                    style: TextStyle(
                        color: Palette.green100, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                'Yesterday',
                style: TextStyle(
                    color: Colors.black38, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
