import 'dart:math';
import 'package:chat_page/chats/chatScreen.dart';
import 'package:chat_page/models/chat_model.dart';
import 'package:flutter/material.dart';
import '../AppColorCodes.dart';

class Requests extends StatelessWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final Brightness brightnessValue = MediaQuery.of(context).platformBrightness;
      bool isDark = brightnessValue == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Requests'),
        backgroundColor: pPrimaryColor,
        actions: [],),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: pDefaultPadding*0.5,vertical: pDefaultPadding),
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0, bottom: 8.0),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width * 0.4,
                      height: 45,
                      shape:isDark? RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white),
                      ):RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.black,),
                      ),
                      elevation: 0,
                      color: pPrimaryColor.withOpacity(0.8),
                      //color: Colors.grey[500],
                      child: Text(
                        "You May Know",
                        style: TextStyle(
                         color: Theme.of(context).textTheme.bodyText1!.color,
                          //color: pPrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 45,
                      minWidth: MediaQuery.of(context).size.width * 0.4,
                      shape: isDark? RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white),
                      ):RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.black),
                      ),
                      elevation: 3,
                      color: pSecondaryColor.withOpacity(0.9),
                      child: Text(
                        "Spam",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            
            Expanded(
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Chatting()));
                          },
                          child: ListView.builder(
                              itemCount: requestsData.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: pDefaultPadding*0.3,
                                      vertical: pDefaultPadding * 0.75),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                             backgroundColor: generateRandomColor(),
                            child: Text(requestsData[index].name[0],style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                          ),
                                          if (requestsData[index].isActive)
                                            Positioned(
                                              right: 0,
                                              bottom: 0,
                                              child: Container(
                                                width: 15,
                                                height: 15,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor,
                                                      width: 3,
                                                    )),
                                              ),
                                            )
                                        ],
                                      ),
                                      Expanded(
                                          child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: pDefaultPadding),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              requestsData[index].name,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Opacity(
                                                opacity: 1,
                                                child: Text(
                                                  requestsData[index].lastMessage,
                                                  style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ))
                                          ],
                                        ),
                                      )),
                                      Opacity(
                                          opacity: 0.7,
                                          child: Text(requestsData[index].time))
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
            ],
        ),
      ),
    );
    
  }
  Color generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
        255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
  }
}
