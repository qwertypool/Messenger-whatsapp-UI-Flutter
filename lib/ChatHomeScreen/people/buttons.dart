import 'package:chat_page/ChatHomeScreen/people/stories.dart';
import 'package:flutter/material.dart';

import '../../AppColorCodes.dart';
import 'active.dart';



class ButtonsActiveStory extends StatelessWidget {
  const ButtonsActiveStory({
    Key? key,
    required this.isDark,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          height: 40,
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
          splashColor: Colors.grey,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Stories(),
              ),
            );
          },
          height: 40,
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
    );
  }
}

