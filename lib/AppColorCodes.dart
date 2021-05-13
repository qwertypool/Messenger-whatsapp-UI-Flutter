import 'package:chat_page/signUpPage/SignUp.dart';
import 'package:flutter/material.dart';

Color pPrimaryColor = Color(0xFFba2d65);
Color pMedColor = Color(0xFFf06292);
Color pSecondaryColor = Color(0xFFff94c2);
Color pContentColorLightTheme = Color(0xFF1D1D35);
Color pContentColorDarkTheme = Color(0xFFF5FCF9);
Color pWarninngColor = Color(0xFFF3BB1C);
Color pErrorColor = Color(0xFFF03738);
const pDefaultPadding = 20.0;

class ColorChange extends StatefulWidget {
  ColorChange({Key? key}) : super(key: key);

  @override
  _ColorChangeState createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue =
        MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              ' Select the theme of app ',
              style: TextStyle(
                  shadows: [
                    isDark
                        ? Shadow(color: Colors.white, offset: Offset(0, -5))
                        : Shadow(color: Colors.black, offset: Offset(0, -5))
                  ],
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationColor: isDark ? Colors.white : Colors.black,
                  fontSize: 17,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: RawMaterialButton(
                    splashColor: Colors.pink,
                    constraints: BoxConstraints(
                      maxWidth:MediaQuery.of(context).size.width * 0.65 ),
                    onPressed: () {
                      setState(() {
                        pPrimaryColor = Color(0xFFba2d65);
                        pMedColor = Color(0xFFf06292);
                        pSecondaryColor = Color(0xFFff94c2);
                      });
                    },
                    elevation: 3.0,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildText('Pink Theme  ', isDark),
                        Icon(
                          Icons.color_lens_rounded,
                          size: 30.0,
                          color: Colors.pink[900],
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: buildRoundedRectangleBorder(isDark),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: RawMaterialButton(
                    splashColor: Colors.teal,
                    constraints: BoxConstraints(
                      maxWidth:MediaQuery.of(context).size.width * 0.65 ),
                    onPressed: () {
                      setState(() {
                        pPrimaryColor = Color(0xFF1a746b);
                        pMedColor = Color(0xFF26a69a);
                        pSecondaryColor = Color(0xFF51b7ae);
                      });
                    },
                    elevation: 3.0,
                    child: Row(
                      
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildText('Teal Theme  ', isDark),
                        Icon(
                          Icons.color_lens,
                          size: 30.0,
                          color: Colors.teal,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: buildRoundedRectangleBorder(isDark),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: RawMaterialButton(
                    splashColor: Colors.yellow,
                    constraints: BoxConstraints(
                      maxWidth:MediaQuery.of(context).size.width * 0.65 ),
                    onPressed: () {
                      setState(() {
                        pPrimaryColor = Color(0xFFc79100);
                        pMedColor = Color(0xFFffc107);
                        pSecondaryColor = Color(0xFFfff350);
                      });
                    },
                    elevation: 3.0,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildText('Yellow Theme ', isDark),
                        Icon(
                          Icons.color_lens,
                          size: 30.0,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: buildRoundedRectangleBorder(isDark),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: RawMaterialButton(
                    splashColor: Colors.purple,
                    constraints: BoxConstraints(
                      maxWidth:MediaQuery.of(context).size.width * 0.65 ),
                    onPressed: () {
                      setState(() {
                        pPrimaryColor = Color(0xFF6a0080);
                        pMedColor = Color(0xFF9c27b0);
                        pSecondaryColor = Color(0xFFd05ce3);
                      });
                    },
                    elevation: 4.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildText('Purple Theme  ', isDark),
                        Icon(
                          Icons.color_lens,
                          size: 30.0,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: buildRoundedRectangleBorder(isDark),
                  ),
                ),
              ],
            ),
            Spacer(),
            RawMaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignUp(),
                ),
              ),
              elevation: 5.0,
              constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.95,
                  minHeight: 42.0),
              fillColor: Theme.of(context).textTheme.bodyText1!.color,
              child: Text(
                'Continue',
                style: isDark == true
                    ? TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 4,
                        fontWeight: FontWeight.w600)
                    : TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        letterSpacing: 4,
                        fontWeight: FontWeight.w500),
              ),
              padding: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(),
            ),
          ],
        )),
      ),
    );
  }

  Text buildText(String color, bool isDark) {
    return Text(
                      color,
                      style: isDark? TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w600)
                  : TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w600),
                      );
  }

  RoundedRectangleBorder buildRoundedRectangleBorder(bool isDark) {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(120.0),
      side: isDark == true
          ? BorderSide(color: Colors.white, width: 2)
          : BorderSide(color: Colors.black, width: 2),
    );
  }
}
