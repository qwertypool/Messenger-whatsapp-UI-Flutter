import 'dart:math';
import 'package:chat_page/models/chat_model.dart';
import 'package:flutter/material.dart';
import '../../AppColorCodes.dart';
import 'buttons.dart';

class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;

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
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: ListView.builder(
                    itemCount: active.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: generateRandomColor(),
                                  child: Text(
                                    active[index].name[0],
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  // backgroundImage: AssetImage(
                                  //     'assets/me.jpg'),
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
                                    horizontal: 16.0),
                                child: Text(
                                  active[index].name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            // Icon(Icons.chat_bubble_rounded,color: pMedColor,),
                            IconButton(
                              icon: calls[index].isFavorite
                                  ? Icon(Icons.favorite, color: Colors.red)
                                  : Icon(Icons.favorite_border_outlined),
                              onPressed: () {
                                setState(() {
                                  calls[index].isFavorite =
                                      !calls[index].isFavorite;
                                  print("pressed");
                                });
                              },
                              color: Colors.red,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
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
