import 'package:flutter/material.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/product.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {required this.itemindex,
      required this.product,
      required this.onPressed});

  final int itemindex;
  final Product product;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      // color: secondaryColor,
      child: InkWell(
        onTap: onPressed,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: 136,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: secondaryColor,
                boxShadow: [kDefaultShadow]),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22), color: Colors.white),
            ),
          ),
          Positioned(
              bottom: 3,
              right: 5,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 130,
                  width: 150,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.contain,
                  ),
                ),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text('${product.title}',
                            style: TextStyle(color: Colors.black)),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5,
                            vertical: kDefaultPadding / 4),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(22),
                                topRight: Radius.circular(22))),
                        child: Text(
                          '${product.price}',
                          style: Theme.of(context).textTheme.button,
                        ),
                      )
                    ]),
              ))
        ]),
      ),
    );
  }
}
