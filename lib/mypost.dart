import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class MyPost extends StatelessWidget {
  const MyPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'My Post',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFFFCFCFAF8),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Container(
                // width: MediaQuery.of(context).size.width - 30.0,
                height: MediaQuery.of(context).size.height - 50.0,
                child: GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  // childAspectRatio: 0.8,
                  children: <Widget>[
                    _cards('Car', 'assets/car.jpg', '\₹10,00,00'),
                    _cards('Bike', 'assets/bike.jpg', '\₹9,00,00'),
                    _cards('Scooter', 'assets/bike.jpg', '\₹10,00,00'),
                    _cards('Car', 'assets/car.jpg', '\₹10,00,00'),
                    _cards('Car', 'assets/car.jpg', '\₹10,00,00'),
                    _cards('Car', 'assets/car.jpg', '\₹10,00,00'),
                    _cards('Car', 'assets/car.jpg', '\₹10,00,00'),
                    _cards('Car', 'assets/car.jpg', '\₹10,00,00'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _cards(
  String name,
  String img,
  String price,
) {
  return InkWell(
    onTap: () {},
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2.0,
                blurRadius: 10.0),
          ],
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Text(
            price,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.0),
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14.0),
          ),
        ],
      ),
    ),
  );
}
