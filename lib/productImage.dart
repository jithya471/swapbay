import 'package:flutter/material.dart';

import 'constants.dart';

class ProductPoster extends StatelessWidget {
   ProductPoster({
       required this.size, required this.image,
  }) ;

  final Size size;
  final  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(image,
          height: size.width*0.5,
          width: size.width*0.5,
          fit: BoxFit.contain,)
        ],
      ),
    );
  }
}
