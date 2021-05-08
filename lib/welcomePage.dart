import 'package:chat_page/AppColorCodes.dart';
import 'package:chat_page/signUpPage/SignUp.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
          child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.5,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/letstalk.jpg")
                      )
                      )),
        ),
        Spacer(flex: 2,),
      Text('Ping Up & Ring Up',
      textAlign: TextAlign.center,
      style: TextStyle(color: pPrimaryColor,
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
      Spacer(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey,
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        ),),
      ),
      Spacer(flex: 4),

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
                    fillColor: pMedColor,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 35.0,
                      color: Colors.white,
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
