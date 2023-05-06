// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String tag;
  final String rating;
  final String price;
  final String imageUrl;
  final VoidCallback onTap;
  final Future<bool?> Function(bool)? isLiked;
  const ProductCard({
    super.key,
    required this.title,
    required this.tag,
    required this.rating,
    required this.price,
    required this.imageUrl,
    required this.onTap,
    this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 120.0,
                width: double.infinity,
                child: Image.asset(imageUrl, fit: BoxFit.cover),
              ),
              Positioned(
                top: 10.0,
                left: 160.0,
                child: LikeButton(
                  size: 20.0,
                  circleColor: CircleColor(
                      start: Palette.green100, end: Palette.green100),
                  bubblesColor: BubblesColor(
                    dotPrimaryColor: Color(0xff33b5e5),
                    dotSecondaryColor: Color(0xff0099cc),
                  ),
                  onTap: isLiked,
                  likeBuilder: (bool isLiked) {
                    return FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: isLiked ? Palette.red100 : Palette.black100,
                      size: 20.0,
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                tag,
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black26),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Color(0xFFFAA23B),
                        ),
                        Text(
                          rating,
                          style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Palette.green100),
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
