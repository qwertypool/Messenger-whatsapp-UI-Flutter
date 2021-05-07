import 'package:chat_page/chats/chatting.dart';
import 'package:chat_page/colorCodes.dart';
import 'package:chat_page/models/chat.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: pPrimaryColor,
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Text('Chats'),
        actions: [
          IconButton(icon:Icon(Icons.search),onPressed: (){},),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              width: 40,
              child:
                  CircleAvatar(backgroundImage: AssetImage('assets/deepa.jpg')),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              color: pPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white),
                      ),
                      elevation: 0,
                      color: Colors.white,
                      child: Text(
                        "Recent Chats",
                        style: TextStyle(
                          color: pPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Colors.white),
                      ),
                      elevation: 0,
                      color: Colors.transparent,
                      child: Text(
                        "Message Requests",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    //  color: Colors.white,
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36.0, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Favourite Contacts',
                              style: TextStyle(
                                  // color: Colors.grey[800],
                                  fontWeight: FontWeight.w600)),
                          Icon(Icons.star)
                        ],
                      ),
                    ),
                    Container(
                      height: 110.0,
                      child: ListView.builder(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: favorites.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage:
                                      AssetImage(favorites[index].imageUrl),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  favorites[index].name,
                                  style: TextStyle(
                                      // color: Colors.grey[850],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          );
                        },
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
                              itemCount: chatsData.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: pDefaultPadding,
                                      vertical: pDefaultPadding * 0.75),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundImage: AssetImage(
                                                chatsData[index].image),
                                          ),
                                          if (chatsData[index].isActive)
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: pDefaultPadding),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              chatsData[index].name,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Opacity(
                                                opacity: 0.7,
                                                child: Text(
                                                  chatsData[index].lastMessage,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ))
                                          ],
                                        ),
                                      )),
                                      Opacity(
                                          opacity: 0.7,
                                          child: Text(chatsData[index].time))
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: pPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1_rounded,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
          // BottomNavigationBarItem(
          //   icon: CircleAvatar(
          //     radius: 16,
          //     backgroundImage: AssetImage("assets/chat_icon.jpg"),
          //   ),
          //   label: "Deepa",
          // ),
        ],
      ),
    );
  }
}
