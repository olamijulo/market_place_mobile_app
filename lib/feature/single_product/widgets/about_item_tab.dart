// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:market_place_mobile_app/feature/single_product/widgets/label_and_title.dart';
import 'package:market_place_mobile_app/themes/palette.dart';

class AboutItemTab
 extends StatelessWidget {
  const AboutItemTab
  ({
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
        Row(
          children: [
            LabelAndTitle(
              label: 'Brand',
              title: 'Nike',
            ),
            SizedBox(
              width: 95.0,
            ),
            LabelAndTitle(
              label: 'Color',
              title: 'Green',
            )
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          children: [
            LabelAndTitle(
              label: 'Category',
              title: 'Shoes',
            ),
            SizedBox(
              width: 60.0,
            ),
            LabelAndTitle(
              label: 'Material',
              title: 'Fibre',
            )
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          children: [
            LabelAndTitle(
              label: 'Condition',
              title: 'New',
            ),
            SizedBox(
              width: 70.0,
            ),
            LabelAndTitle(
              label: 'Wight',
              title: '30g',
            )
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Divider(
          thickness: 2.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Description',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Palette.black100),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black26,
                    size: 5.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black38,
                    size: 5.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black38,
                    size: 5.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black26,
                    size: 5.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.solidCircle,
                    color: Colors.black38,
                    size: 5.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                      style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 300.0,
          child: Text(
            'Chat us to learn more about the product. :) ',
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
                color: Colors.black38),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Text(
              'See less',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Palette.green100),
            ),
            SizedBox(
              width: 10.0,
            ),
            FaIcon(
              FontAwesomeIcons.chevronUp,
              color: Colors.black38,
              size: 15.0,
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Shipping Information:',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Palette.black100),
        ),
        SizedBox(
          height: 30.0,
        ),
        LabelAndTitle(label: 'Delivery', title: 'Shipping from Nigeria'),
        SizedBox(
          height: 15.0,
        ),
        LabelAndTitle(label: 'Shipping', title: 'FREE internation Shipping'),
        SizedBox(
          height: 15.0,
        ),
        LabelAndTitle(
            label: 'Arrive', title: 'Estimated Arrival 15 - 20 May 2023'),
        SizedBox(
          height: 30.0,
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          'Seller Information:',
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Palette.black100),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                      color: Colors.black12, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      'Seller logo',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ),
                ),
                Positioned(
                  top: 70.0,
                  left: 60.0,
                  child: Container(
                    height: 22.0,
                    width: 22.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.white, width: 4.0),
                        shape: BoxShape.circle),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Thrifts Store',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Palette.black100),
                ),
                SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  width: 210.0,
                  child: Text('Active 5 min ago  |  96.7% Positive feedback',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black38)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  width: 150.0,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          side: BorderSide(color: Palette.green100)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.store,
                              color: Palette.green100, size: 16.0),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Visit Store',
                            style: TextStyle(
                              color: Palette.green100,
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        Divider(
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
