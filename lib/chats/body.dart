import 'package:chat_page/colorCodes.dart';
import 'package:chat_page/models/messages.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  //const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
             padding: const EdgeInsets.symmetric(horizontal:pDefaultPadding),
              child: ListView.builder(
                  itemCount: chatMessages.length,
                  itemBuilder: (context, index) =>
                      Messages(message: chatMessages[index])),
            )),
        chatTextField(context),
      ],
    );
  }

  Container chatTextField(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: pDefaultPadding, vertical: pDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.2))
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: pSecondaryColor),
            SizedBox(
              width: pDefaultPadding * 0.1,
            ),
            Expanded(
                child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: pPrimaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.sentiment_satisfied_alt_outlined),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: pDefaultPadding * 0.01,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      minLines: 2,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: 'Type your message',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.attach_file),
                  IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {},
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class Messages extends StatelessWidget {
  const Messages({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:pDefaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender?MainAxisAlignment.end:MainAxisAlignment.start,
        children: [
          if(!message.isSender)...[
            CircleAvatar(
              radius: 13,
              backgroundImage: AssetImage('assets/deepa.jpg'),)],
              SizedBox(width: pDefaultPadding/2,),
          Container(
           // margin: EdgeInsets.only(top:pDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: pDefaultPadding*0.7,vertical: pDefaultPadding/2),
            decoration: BoxDecoration(color: message.isSender? pSecondaryColor.withOpacity(0.9):pSecondaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(35)),
            child: Text(message.text,
            style: TextStyle(color:message.isSender?Colors.white:Colors.black),
            )
            ),
        ],
      ),
    );
  }
}
