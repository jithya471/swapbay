import 'package:flutter/material.dart';
import 'package:swapbay/sendmenu_itemlist.dart';
import 'chat_bubble.dart';
import 'chat_message.dart';
import 'package:flutter/cupertino.dart';
import 'chatdetail_appbar.dart';

enum MessageType {
  Sender,
  Receiver,
}

class ChatDetailPage extends StatefulWidget {
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message: 'Hi Mariyath', type: MessageType.Receiver),
    ChatMessage(message: 'Hi Mariyath', type: MessageType.Receiver),
    ChatMessage(message: 'Hi Mariyath', type: MessageType.Sender),
    ChatMessage(message: 'Hi Mariyath', type: MessageType.Receiver),
    ChatMessage(message: 'Hi Mariyath', type: MessageType.Sender),
    ChatMessage(message: 'Hi Mariyath', type: MessageType.Receiver),
  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(text: 'Photos', icons: Icons.image, color: Colors.amber),
    SendMenuItems(
        text: 'Document', icons: Icons.file_copy_rounded, color: Colors.amber),
  ];

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 4,
                    width: 50,
                    color: Colors.grey.shade200,
                  ),
                ),
                ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: menuItems[index].color.shade100,
                          ),
                          height: 50,
                          width: 50,
                          child: Icon(
                            menuItems[index].icons,
                            size: 20,
                            color: menuItems[index].color.shade400,
                          ),
                        ),
                        title: Text(menuItems[index].text),
                      );
                    }),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailPageAppBar(),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatBubble(
                chatMessage: chatMessage[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 16, bottom: 10),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Type Message...',
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(
                right: 30,
                bottom: 50,
              ),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                backgroundColor: Colors.pink,
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
