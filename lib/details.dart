import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/detailsBody.dart';
import 'package:swapbay/product.dart';
import 'package:like_button/like_button.dart';

class Details extends StatelessWidget {
  final Product product;
  const Details({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: buildAppBar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
     
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: LikeButton(
            isLiked: false,
            
          ),
        ),
      ],
    );
  }
}
