
import 'package:chat_page/AppColorCodes.dart';
// import 'package:chat_page/signUpPage/SignUp.dart';
import 'package:flutter/material.dart';
// import 'package:chat_page/theme.dart';
class WelcomePage extends StatelessWidget {
const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Brightness brightnessValue = MediaQuery.of(context).platformBrightness;
    bool isDark = brightnessValue == Brightness.dark;
    return Scaffold(
        body: SafeArea(
    child: Column(
      children: [
        Spacer(),
                // SvgPicture.asset(
                //              "assets/icons/group.svg",
                //             height: 220,
                //             width: 220,
                //           ),
                          Image.asset('assets/mobile-chatting-app.png'),
       SizedBox(height: 5,),
      Text('Ping Up & Ring Up',
      textAlign: TextAlign.center,
      style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color,
      fontSize: 38.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Sacramento',
      letterSpacing: 2.0,
      shadows: <Shadow>[
      Shadow(
        offset: Offset(5.0, 5.0),
        blurRadius: 3.0,
        color: Color.fromARGB(25, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(5.0, 5.0),
        blurRadius: 5.0,
        color: Color.fromARGB(25, 0, 0, 255),
      ),
    ],
      ),
      ),
      SizedBox(height: 12,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
                "Inspired from \n whatsapp & messenger \n with light mode & Dark mode \n and multiple color themes ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.5,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.64),
                ),
              ),
      ),
      Divider(
        color: Colors.grey,
        height:30,
        indent: 50,
        endIndent: 50,
      ),
      Spacer(flex: 5,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 16.0),
        child: RawMaterialButton( 
                    onPressed: ()  => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ColorChange(),
                          ), ),
                    elevation: 5.0,
                    constraints :BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width * 0.92 , 
                     minHeight: 42.0),
                    fillColor: Theme.of(context).textTheme.bodyText1!.color,
                    child:Text(
                      'Choose your theme',
                      style:  isDark == true ? TextStyle(
                         color: Colors.black,
                          fontSize: 16,
                         letterSpacing: 4,
                         fontWeight: FontWeight.w500
                         ):
                         TextStyle(
                         color: Colors.white,
                         fontSize: 16,
                         letterSpacing: 4,
                         fontWeight: FontWeight.w500
                         ),
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder()
                        ),
            ),       
            ],
             ),
              ),
            );
      
  }
  
}
