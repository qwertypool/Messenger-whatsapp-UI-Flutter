import 'package:chat_page/ChatHomeScreen/people.dart';
import 'package:chat_page/models/chat_model.dart';
// import 'package:chat_page/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:chat_page/AppColorCodes.dart';
import '../AppColorCodes.dart';

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
            Row(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => People(),
                      ),
                    );
                  },
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  height: 45,
                  shape: isDark
                      ? RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.white),
                        )
                      : RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                  elevation: 0,
                  color: pPrimaryColor.withOpacity(0.8),
                  //color: Colors.grey[500],
                  child: Text(
                    "ACTIVE(105)",
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Stories(),
                      ),
                    );
                  },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width * 0.4,
                  shape: isDark
                      ? RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.white),
                        )
                      : RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                  elevation: 0,
                  color: pSecondaryColor.withOpacity(0.9),
                  child: Text(
                    "STORIES(50)",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
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

  Card buildCard(String name, String url) {
    //int count = 0;
    return Card(
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
      
        },
        child: SizedBox(
          width: 160,
          height: 260,
          child: Container(
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(url),
                  Positioned(
                    top: 4,
                    left: 4,
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Text(
                        name[0],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      radius: 20,
                    ),
                  ),
                  Positioned(
                  top: 0,
                  right: 0,
                  child: Text(name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
                ])
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}

class CardBody extends StatelessWidget {
  const CardBody({
    Key? key,
    required this.names,
    required this.col,
  }) : super(key: key);
  final String names;
  final Color col;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: SizedBox(
          width: 150,
          height: 250,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 20,
            ),
            title: Text(names),
            subtitle: Opacity(
              opacity: 0.7,
              child: Text(
                'Accustomed 🤕 wid coding 👨‍💻 & covid 🦠 ',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            trailing: Icon(Icons.edit),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
