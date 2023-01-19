import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/Forms/electronics.dart';
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: Container(),
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
                  Navigator.pushNamed(context, '/cars');
                },
                iconData: Icon(
                  FontAwesomeIcons.car,
                  color: Colors.white,
                ),
                text: 'Cars',
              ),
              Categories(
                onTap: () {
                  Navigator.pushNamed(context, '/properties');
                },
                  iconData: Icon(
                    FontAwesomeIcons.building,
                    color: Colors.white,
                  ),
                  text: 'Properties'),
                  Categories(
                    onTap: () {
                      Navigator.pushNamed(context, '/mobiles');
                    },
                  iconData: Icon(
                    FontAwesomeIcons.mobileScreen,
                    color: Colors.white,
                  ),
                  text: 'Mobiles'),
                  Categories(
                    onTap: () {
                      Navigator.pushNamed(context, '/jobs');
                    },
                  iconData: Icon(
                    FontAwesomeIcons.briefcase,
                    color: Colors.white,
                  ),
                  text: 'Jobs'),
                  Categories(
                    onTap: () {
                      Navigator.pushNamed(context, '/bikes');
                    },
                  iconData: Icon(
                    FontAwesomeIcons.motorcycle,
                    color: Colors.white,
                  ),
                  text: 'Bikes'),
                  Categories(
                    onTap: (){
                      Navigator.pushNamed(context, '/electronics');
                    },
                  iconData: Icon(
                    FontAwesomeIcons.blenderPhone,
                    color: Colors.white,
                  ),
                  text: 'Electronics &\nAppliances', ),
                  Categories(
                    onTap: (() {
                      Navigator.pushNamed(context, '/electronics');
                    }),
                  iconData: Icon(
                    FontAwesomeIcons.wrench,
                    color: Colors.white,
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
    return Container(
      decoration: BoxDecoration(
        color: kBlack,
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
              style: TextStyle(color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
