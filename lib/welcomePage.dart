import 'package:chat_page/SignUp.dart';
import 'package:chat_page/colorCodes.dart';
import 'package:flutter/material.dart';
// import 'package:chat_page/theme.dart';
class WelcomePage extends StatelessWidget {
  //const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
    child: Column(
      children: [
      //   ClipRRect(
      //   borderRadius: BorderRadius.circular(50.0),
      //   child: Image.asset('assets/chat_icon.jpg',width: 150,height: 150,),
      // ),
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
                
 
// FittedBox(
//               child: TextButton(
//                   onPressed: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => SignUp(),
//                         ),
//                       ),
//                   child: Row(
//                     children: [
//                       InkWell(
//                         borderRadius: BorderRadius.circular(30),
//                         focusColor: pPrimaryColor,
//                         splashColor: pPrimaryColor,
//                         child:Text(
//                         "Next",
//                         style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                               color: Theme.of(context)
//                                   .textTheme
//                                   .bodyText1!
//                                   .color!
//                                   .withOpacity(0.8),
//                             ),
//                       ),),
//   SizedBox(width: pDefaultPadding / 3),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         size: 16,
//                         // color: Theme.of(context)
//                         //     .textTheme
//                         //     .bodyText1!
//                         //     .color!
//                         //     .withOpacity(0.8),
//                       )
//                     ],
//                   )),
//             )
          
      ],
    ),
        ),
      );
  }
}
