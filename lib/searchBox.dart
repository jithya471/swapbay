import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class SearchBox extends StatelessWidget {
  SearchBox({required this.onChanged});
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20)),
          child: TextField(
            onChanged: onChanged,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              icon: Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.white,),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.white)
            ),
            
          ),
    );
  }
}
