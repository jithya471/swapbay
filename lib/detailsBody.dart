// ignore_for_file: unnecessary_import
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/product.dart';
import 'package:swapbay/productImage.dart';

import 'chatAndCall.dart';

class DetailsBody extends StatefulWidget {
  final Product product;
  DetailsBody({required this.product});

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                    itemCount: widget.product.imageList.length,
                    itemBuilder: (context, index, realIndex) {
                      final imagelist = widget.product.imageList[index];
                      return buildImage(imagelist, index);
                    },
                    options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(child: buildIndicator()),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      widget.product.title,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Text(
                    '${widget.product.price}',
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      widget.product.description,
                      style: TextStyle(color: secondaryColor),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            ChatAndCAll()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: primaryColor),
      activeIndex: activeIndex,
      count: widget.product.imageList.length);

  Widget buildImage(String imagelist, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Image.asset(
        widget.product.imageList[index],
        fit: BoxFit.contain,
      ),
    );
  }
}
