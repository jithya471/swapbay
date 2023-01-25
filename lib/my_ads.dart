import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
          'My Wishlist',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                  childAspectRatio: 0.8,
                  children: <Widget>[
                    _buildCard('Car', 'assets/car.jpg', '\₹10,00,00', false, true,
                        context),
                    _buildCard('Bike', 'assets/bike.jpg', '\₹9,00,00', false,
                        true, context),
                    _buildCard('Scooter', 'assets/bike.jpg', '\₹10,00,00', false,
                        true, context),
                    _buildCard('Car', 'assets/car.jpg', '\₹10,00,00', false, true,
                        context),
                    _buildCard('Car', 'assets/car.jpg', '\₹10,00,00', false, true,
                        context),
                    _buildCard('Car', 'assets/car.jpg', '\₹10,00,00', false, true,
                        context),
                    _buildCard('Car', 'assets/car.jpg', '\₹10,00,00', false, true,
                        context),
                    _buildCard('Car', 'assets/car.jpg', '\₹10,00,00', false, true,
                        context),
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

Widget _buildCard(String name, String img, String price, bool added,
    bool isFavorite, context) {
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: isFavorite
                      ? Icon(Icons.favorite, color: secondaryColor)
                      : Icon(Icons.favorite_border, color: secondaryColor),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),
              ),
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
    ),
  );
}
