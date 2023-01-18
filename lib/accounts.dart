import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/constants.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/user.jpg',
                                        )),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(60, 60, 0, 0),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black),
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'NAME',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                              MyElevatedButton(
                                  borderRadius: BorderRadius.circular(25),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Edit',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.angleRight,
                                        size: 15,
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: InkWell(
                                  onTap: (() {}),
                                  child: Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Settings',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                            Icon(
                                              FontAwesomeIcons.angleRight,
                                              color: Colors.white,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                      )),
                                ),
                                color: Color(0xff1c1825),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))),
      ),
    );
  }
}
