import 'package:chat_page/chats/chat_page_body.dart';
import 'package:chat_page/AppColorCodes.dart';
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
        Stack(
            children:[
            CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/me.jpg'),),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color:Colors.green,
                  shape: BoxShape.circle
                ),
              ),
            )
                  ],
        ),

          SizedBox(width: pDefaultPadding*0.7,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jyoti Singh',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              SizedBox(height:1,),
              Opacity(
                opacity: 0.9,
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
