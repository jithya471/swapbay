import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/constants.dart';

class ChatAndCAll extends StatelessWidget {
  const ChatAndCAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.comment,
            color: Colors.white,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            'Chat',
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.phone, color: Colors.white,),
              label: Text(
                'Call',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
