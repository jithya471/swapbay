

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swapbay/Forms/bikes.dart';
import 'package:swapbay/Forms/car.dart';
import 'package:swapbay/Forms/electronics.dart';
import 'package:swapbay/Forms/jobs.dart';
import 'package:swapbay/Forms/mobiles.dart';
import 'package:swapbay/Forms/properties.dart';
import 'package:swapbay/Forms/services.dart';
import 'package:swapbay/accounts.dart';
import 'package:swapbay/home.dart';
import 'package:swapbay/sell.dart';
import 'package:swapbay/settings.dart';
import 'package:swapbay/splashScreen.dart';

void main() {
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     WidgetsFlutterBinding.ensureInitialized();
  
  // Than we setup preferred orientations,
  // and only after it finished we run our app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
     
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 230, 58, 58),
      scaffoldBackgroundColor: Colors.white,
      textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
      visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,

      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => SplashScreen(),
        // '/register': (context) => RegisterPage(),
        '/home': (context) => MyHome(),
        '/accounts': (context) => AccountsPage(),
        '/settings': (context) => Settings(),
        '/electronics': (context) => Electronics(),
        '/bikes': (context) => Bikes(),
        '/cars': (context) => Car(),
        '/jobs': (context) => Jobs(),
        '/mobiles': (context) => Mobiles(),
        '/properties': (context) => Properties(),
        '/services': (context) => Services(),
        '/sell': (context) => Sell(),
        
      },
    );
  }
}
