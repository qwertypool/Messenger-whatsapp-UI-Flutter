import 'package:chat_page/AppColorCodes.dart';
import 'package:chat_page/signUpPage/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:chat_page/theme.dart';
class WelcomePage extends StatelessWidget {
const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
    child: Column(
      children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0,48.0,16.0,0.0),
                  child: SvgPicture.asset(
                               "assets/icons/group.svg",
                             // color: Theme.of(context).textTheme.bodyText1!.color,
                             // color: pPrimaryColor,
                              height: 220,
                              width: 220,
                            ),
                ),
        Spacer(),
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
      SizedBox(height: 30,),
      ColorChange(),
      Spacer(flex: 2,),
      Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: RawMaterialButton(
                    onPressed: ()  => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        ),
                    elevation: 4.0,
                    // fillColor: pMedColor,
                    fillColor: Theme.of(context).textTheme.bodyText1!.color,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 35.0,
                       color: Colors.pink[600],
                     // color: Theme.of(context).textTheme.bodyText1!.backgroundColor,
                    ),
                    padding: EdgeInsets.all(15.0),
                    
                    shape: CircleBorder(),
                  ),
      ),       
      ],
    ),
        ),
      );
  }
}
