import 'package:flutter/material.dart';
import 'package:swapbay/chat_message.dart';
import 'package:flutter/cupertino.dart';
import 'chat_detailpage.dart';

class ChatBubble extends StatelessWidget {
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: Align(
        alignment: (chatMessage.type == MessageType.Receiver?Alignment.topLeft:Alignment.topRight),
        child: Container(
          color: (chatMessage.type == MessageType.Receiver?Colors.white:Colors.grey.shade400),
          padding: EdgeInsets.all(16),
          child:Text(chatMessage.message),
        ),
      ),
    );
  }
}
