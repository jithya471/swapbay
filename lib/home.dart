import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/accounts.dart';
import 'package:swapbay/body.dart';
import 'package:swapbay/chat.dart';
import 'package:swapbay/constants.dart';
import 'package:path/path.dart';
import 'package:swapbay/my_ads.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: NavigationDrawer(),
          backgroundColor: primaryColor,
          appBar: buildAppBar(context),
          body: Body(),
        ),
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
        IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.locationDot))
      ],
      title: Text('Swapbay'),
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
                  .push(MaterialPageRoute(builder: (context) => MyAds()));
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
            onTap: () {},
            child: SideBarList(
              iconData: Icon(Icons.logout, color: primaryColor),
              title: 'LOGOUT',
            ),
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
      child: Container(
        decoration: BoxDecoration(gradient: primary),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SideBarHeader(
            email: 'jithya@gmail.com',
            name: 'JITHYA ANAND',
          ),
        ),
      ),
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
