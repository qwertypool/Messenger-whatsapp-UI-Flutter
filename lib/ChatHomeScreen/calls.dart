import 'dart:math';

import 'package:chat_page/AppColorCodes.dart';
import 'package:chat_page/models/chat_model.dart';
// import 'package:chat_page/chats/chat_page_body.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pPrimaryColor,
        title: Text('Calls'),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: pDefaultPadding, vertical: pDefaultPadding*0.2),
        child: ListView.builder(
            itemCount: calls.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: generateRandomColor(),
                              child: Text(
                                calls[index].name[0],
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
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
                                      color:
                                          Theme.of(context).scaffoldBackgroundColor,
                                      width: 3,
                                    )),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: pDefaultPadding * 1.3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  calls[index].name,
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    (calls[index].isActive==false)?Icon(Icons.call_missed_outgoing,color: Colors.red, ):Icon(Icons.call_received_outlined,color: Colors.green,),
                                    SizedBox(width: 5,),
                                    Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          calls[index].time,
                                          maxLines: 1,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        (calls[index].isVideoCall)?
                        Icon(
                          Icons.video_call_rounded,
                          color: Colors.green,
                          size: 28,
                        ):
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        )
                      ],
                    ),
                    Divider(
                     color: Colors.grey[300],
                      thickness: 1,
                      indent: 65,
                      endIndent: 5,
                    )
                  ],
                ),
              );
              
            }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: pPrimaryColor,
            child: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8,),
          FloatingActionButton(
              onPressed: () {},
              backgroundColor: pPrimaryColor,
              child: Icon(
                Icons.phone_forwarded,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }

  Color generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
        255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
  }
}
