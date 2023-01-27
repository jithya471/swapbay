import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/accounts.dart';
import 'package:swapbay/body.dart';
import 'package:swapbay/chat.dart';
import 'package:swapbay/constants.dart';
import 'package:path/path.dart';
import 'package:swapbay/login.dart';
import 'package:swapbay/my_ads.dart';
import 'package:swapbay/mypost.dart';

import 'locationBottomsheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawer(),
        backgroundColor: primaryColor,
        appBar: buildAppBar(context),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: primaryColor,
      // leading: Container(),
      centerTitle: true,

      actions: [
        TextButton.icon(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: _locationmodalBottomSheetMenu(context));
          },
          icon: Icon(
            FontAwesomeIcons.locationDot,
            color: Colors.white,
          ),
          label: Text(
            'tvm',
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
      title: Text(
        'Swapbay',
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [buildHeader(context), buildMenuItem(context)],
      )),
    );
  }

  buildMenuItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: (() {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyAds()));
            }),
            child: SideBarList(
              iconData: Icon(FontAwesomeIcons.heart, color: primaryColor),
              title: 'MY WISHLIST',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(color: primaryColor),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyPost()));
            },
            child: SideBarList(
              iconData: Icon(Icons.upload_file, color: primaryColor),
              title: 'MY POST',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(color: primaryColor),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ChatScreen()));
            },
            child: SideBarList(
              iconData: Icon(
                FontAwesomeIcons.comment,
                color: primaryColor,
              ),
              title: 'CHAT',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              color: primaryColor,
            ),
          ),
          InkWell(
            onTap: () {
              showAlertDialog(context);
            },
            child: SideBarList(
                iconData: Icon(Icons.logout, color: primaryColor),
                title: 'LOGOUT'),
          ),
        ],
      ),
    );
  }

  buildHeader(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AccountsPage()));
      },
      child: Stack(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(gradient: primary),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SideBarHeader(
              email: 'jithya@gmail.com',
              name: 'JITHYA ANAND',
            ),
          ),
        ),
        Positioned(
            right: 15,
            bottom: 15,
            child: Icon(
              FontAwesomeIcons.pen,
              color: Colors.white,
              size: 20,
            ))
      ]),
    );
  }
}

class SideBarList extends StatelessWidget {
  SideBarList({required this.iconData, required this.title});
  final Icon iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: iconData,
          title: Text(
            title,
            style: TextStyle(color: primaryColor),
          ),
        )
      ],
    );
  }
}

class SideBarHeader extends StatelessWidget {
  SideBarHeader({required this.name, required this.email});
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          minRadius: 20,
          maxRadius: 40,
          backgroundColor: Colors.white,
          child: Icon(
            FontAwesomeIcons.user,
            color: primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Text(
          email,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
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
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      onTap: () {
        Navigator.of(context, rootNavigator: true).pop('dialog');
      },
    ),
  );
  Widget continueButton = Padding(
    padding: EdgeInsets.only(right: kDefaultPadding),
    child: InkWell(
      child: Text("Yes", style: TextStyle(fontSize: 15, color: Colors.black)),
      onTap: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    ),
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Logout",
      style: TextStyle(color: Colors.black),
    ),
    content: Text(
      "Are you sure you want to Logout?",
      style: TextStyle(color: Colors.black),
    ),
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

_locationmodalBottomSheetMenu(context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return locationBottomsheet();
      });
}
