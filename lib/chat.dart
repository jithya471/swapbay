import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'chat_list.dart';
import 'chat_user.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: 'Mariyath', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Jithya', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Adithya', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Amina', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Kripa', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Anandhu', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Ashim', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Soumya', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: '', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
    ChatUsers(text: 'Mariyath', secondaryText: 'Awesome Setup', image: 'images/user.png', time: 'Now'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Chats',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                    Container(
                      padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons .dns,color: Colors.pink,size: 20,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey.shade400,),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
                itemCount: chatUsers.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index){
                  return ChatList(
                    text: chatUsers[index].text,
                    secondaryText: chatUsers[index].secondaryText,
                    image: chatUsers[index].image,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3)?true:false,
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
