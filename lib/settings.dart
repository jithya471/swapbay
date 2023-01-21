import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/constants.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.angleLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: primary)),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(children: [
          InkWell(
            onTap: () {},
            child: ListTile(
          leading: Icon(Icons.delete_forever, color: primaryColor,),
          title: Text(
            'Delete Account',
            style: TextStyle(color: primaryColor),
          ),
        )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              color: primaryColor,
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
          leading: Icon(Icons.logout_rounded, color: primaryColor,),
          title: Text(
            'Logout from all Devices',
            style: TextStyle(color: primaryColor),
          ),
        )
          ),
        ]),
      ),
    );
  }
}
