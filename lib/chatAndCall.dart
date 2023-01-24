import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/constants.dart';
import 'package:swapbay/home.dart';

import 'chat.dart';

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
          Row(
            children: [
              Icon(
                FontAwesomeIcons.comment,
                color: Colors.white,
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                },
                child: Text(
                  'Chat',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Spacer(),
          TextButton.icon(
              onPressed: () {
                showAlertDialog(context);
              },
              icon: Icon(
                FontAwesomeIcons.phone,
                color: Colors.white,
              ),
              label: Text(
                'Call',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = Padding(
    padding: EdgeInsets.only(right: kDefaultPadding),
    child: InkWell(
      child: Text(
        "No",
        style: TextStyle(fontSize: 15),
      ),
      onTap: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    ),
  );
  Widget continueButton = Padding(
    padding: EdgeInsets.only(right: kDefaultPadding),
    child: InkWell(
      child: Text(
        "Yes",
        style: TextStyle(fontSize: 15),
      ),
      onTap: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    ),
  );
  SizedBox(
    width: 20,
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Call"),
    content: Text("Are you sure you want to call?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
