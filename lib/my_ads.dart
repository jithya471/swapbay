import 'package:flutter/material.dart';
import 'ads_tab.dart';
import 'constants.dart';
import 'favorite_tab.dart';

class MyAds extends StatefulWidget {
  const MyAds({Key? key}) : super(key: key);

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          leading: Container(),
          flexibleSpace:
              Container(decoration: BoxDecoration(gradient: primary)),
          title: Text(
            'My Ads',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                  indicatorColor: primaryColor,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(fontSize: 20),
                  unselectedLabelColor: Colors.white.withOpacity(0.6),
                  tabs: [
                    Tab(text: 'Ads'),
                    Tab(text: 'Favorite'),
                  ]),
              Expanded(
                child: TabBarView(
                  children: [
                    AdsPage(),
                    FavoritesPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
