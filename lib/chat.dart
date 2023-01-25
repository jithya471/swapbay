import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swapbay/home.dart';

import 'chat_list.dart';
import 'chat_user.dart';
import 'constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: 'Mariyath',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Jithya',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Adithya',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Amina',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Kripa',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Anandhu',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Ashim',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Soumya',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Anjana',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
    ChatUsers(
        text: 'Mariyath',
        secondaryText: 'Awesome Setup',
        image: 'images/user.png',
        time: 'Now'),
  ];
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
          'Chat',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Text('Sell Chat'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Text('Buy Chat'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChatList(
                    text: chatUsers[index].text,
                    secondaryText: chatUsers[index].secondaryText,
                    image: chatUsers[index].image,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
