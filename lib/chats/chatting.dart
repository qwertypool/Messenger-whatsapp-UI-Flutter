import 'package:chat_page/chats/body.dart';
import 'package:chat_page/colorCodes.dart';
import 'package:flutter/material.dart';

class Chatting extends StatefulWidget {
  //Chatting({Key key}) : super(key: key);

  @override
  _ChattingState createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 0,
      title: Row(
        children: [
           CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/me.jpg'),),
          SizedBox(width: pDefaultPadding*0.7,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jyoti Singh',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              SizedBox(height:1,),
              Opacity(
                opacity: 0.7,
                child: Text('online',style:TextStyle(fontSize: 14,fontWeight: FontWeight.w400)))
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
         icon: Icon(Icons.call),onPressed: (){},),
        IconButton(
         icon: Icon(Icons.videocam),onPressed: (){},),
         SizedBox(width: pDefaultPadding*0.2,)
      ],
    );
  }
}
