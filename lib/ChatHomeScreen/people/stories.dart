import 'package:chat_page/ChatHomeScreen/people/active.dart';
import 'package:chat_page/models/chat_model.dart';
// import 'package:chat_page/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:chat_page/AppColorCodes.dart';
import '../../AppColorCodes.dart';
import 'buttons.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight -150) / 2;
    final double itemWidth = size.width / 2;
    //int count = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pPrimaryColor,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: Container(
              width: 40,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/deepa.jpg'),
              )),
        ),
        title: Text('People'),
        actions: [
          IconButton(
            icon: Icon(Icons.list_alt_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
        child: Column(
          children: [
            ButtonsActiveStory(isDark: isDark),
            Expanded(
           child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
          children: List.generate(active.length, (index) {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.4,
                height: 240,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.grey.shade200),
                   shape: BoxShape.rectangle,
                   borderRadius:BorderRadius.circular(10)
                   ),
                child: Column(
                children: [
                  Stack(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Image.asset(active[index].storyImage)),
                  Positioned(
                    top: 4,
                    left: 6,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: pPrimaryColor,
                        child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        child: Text(
                          active[index].name[0],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        radius: 18,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 4,
                      right: 8,
                      child: Text(
                          active[index].name,
                          style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontWeight: FontWeight.bold))),
                  Positioned(
                      bottom: -10,
                      right: -2,
                      child:IconButton(
                              icon: active[index].isFavorite
                                  ? Icon(Icons.thumb_up, color: Colors.red)
                                  : Icon(Icons.thumb_up_alt_outlined),
                              onPressed: () {
                                setState(() {
                                  active[index].isFavorite =
                                      !active[index].isFavorite;
                                  print("pressed");
                                }); }
                      )

                      
                      ),
                ])
              ],
            ),
                )
        
             
            );
          }
          ),

            ),
            ),
          ],
        ),
      ),
      
    );
  }
}



