import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/Forms/bikes.dart';
import 'package:swapbay/Forms/car.dart';
import 'package:swapbay/Forms/electronics.dart';
import 'package:swapbay/Forms/jobs.dart';
import 'package:swapbay/Forms/mobiles.dart';
import 'package:swapbay/Forms/properties.dart';
import 'package:swapbay/Forms/services.dart';
import 'package:swapbay/constants.dart';

class Sell extends StatefulWidget {
  const Sell({super.key});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.angleLeft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        flexibleSpace: Container(decoration: BoxDecoration(gradient: primary)),
        title: Text(
          'What are you offering',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.count(
            crossAxisSpacing: 8,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Categories(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Car()));
                },
                iconData: Icon(
                  FontAwesomeIcons.car,
                  color: primaryColor,
                ),
                text: 'Cars',
              ),
              Categories(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Properties()));
                  },
                  iconData: Icon(
                    FontAwesomeIcons.building,
                    color: primaryColor,
                  ),
                  text: 'Properties'),
              Categories(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Mobiles()));
                  },
                  iconData: Icon(
                    FontAwesomeIcons.mobileScreen,
                    color: primaryColor,
                  ),
                  text: 'Mobiles'),
              Categories(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Jobs()));
                  },
                  iconData: Icon(
                    FontAwesomeIcons.briefcase,
                    color: primaryColor,
                  ),
                  text: 'Jobs'),
              Categories(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Bikes()));
                  },
                  iconData: Icon(
                    FontAwesomeIcons.motorcycle,
                    color: primaryColor,
                  ),
                  text: 'Bikes'),
              Categories(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Electronics()));
                },
                iconData: Icon(
                  FontAwesomeIcons.blenderPhone,
                  color: primaryColor,
                ),
                text: 'Electronics &\nAppliances',
              ),
              Categories(
                  onTap: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Services()));
                  }),
                  iconData: Icon(
                    FontAwesomeIcons.wrench,
                    color: primaryColor,
                  ),
                  text: 'Services'),
            ],
          ),
        ),
      ),
    );
  }
}

class Categories extends StatelessWidget {
  Categories({required this.iconData, required this.text, required this.onTap});
  String text;
  Icon iconData;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconData,
              Text(
                textAlign: TextAlign.center,
                text,
                style: TextStyle(color: primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
