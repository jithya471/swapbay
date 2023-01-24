import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/details.dart';
import 'package:swapbay/product.dart';
import 'package:swapbay/productCard.dart';
import 'package:swapbay/sell.dart';

import 'categoryList.dart';
import 'searchBox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(
            onChanged: ((value) {}),
          ),
          CategoryList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    itemindex: index,
                    product: products[index],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(
                                    product: products[index],
                                  )));
                    },
                  );
                },
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: FloatingActionButton.extended(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Sell()));
                  },
                  icon: Icon(Icons.add),
                  label: Text('SELL', style: TextStyle(fontSize: 15),),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
