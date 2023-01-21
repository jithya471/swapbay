
import 'package:flutter/material.dart';
import 'package:swapbay/colorDot.dart';

import 'constants.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          colorDot(
            fillColor: Color(0xff80989A),
            isSelected: true,
          ),
           colorDot(
            fillColor: Color(0xFFFF5200),
            isSelected: true,
          ),
           colorDot(
            fillColor: primaryColor,
            isSelected: true,
          )
        ],
      ),
    );
  }
}

