// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

/// An example of using the plugin, controlling lifecycle and playback of the
/// video.

import 'package:flutter/material.dart';
import 'package:swapbay/accounts.dart';
import 'package:swapbay/bottomNavigation.dart';
import 'package:swapbay/edit.dart';
import 'package:swapbay/home.dart';
import 'package:swapbay/register.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => SplashScreen(),
        // '/register': (context) => RegisterPage(),
        '/home': (context) => Example(),
        // '/accounts': (context) => AccountsPage(),
        '/settings': (context) => Settings(),
        '/edit': (context) => Edit(),
      },
    );
  }
}
