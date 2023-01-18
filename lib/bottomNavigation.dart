import 'package:flutter/material.dart';
import 'package:swapbay/accounts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    // SellScreen(),
    // MyAds(),
    // ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                          setState(() {
                            currentScreen = Home();
                            currentTab = 0;
                          });
                  },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                        color: currentTab ==0 ?Colors.blue: Colors.grey,),
                        Text('Home',style: TextStyle(color: currentTab == 0 ?Colors.blue: Colors.grey),),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = AccountsPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                          color: currentTab ==0 ?Colors.blue: Colors.grey,),
                        Text('chat',style: TextStyle(color: currentTab == 1 ?Colors.blue: Colors.grey),),
                      ],
                    ),
                  ),
                ],
              ),
              //Right Tabs
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = Home();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                          color: currentTab ==0 ?Colors.blue: Colors.grey,),
                        Text('Home',style: TextStyle(color: currentTab == 0 ?Colors.blue: Colors.grey),),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = AccountsPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                          color: currentTab ==0 ?Colors.blue: Colors.grey,),
                        Text('chat',style: TextStyle(color: currentTab == 1 ?Colors.blue: Colors.grey),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
