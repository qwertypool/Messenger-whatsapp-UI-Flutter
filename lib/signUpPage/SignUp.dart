import 'package:chat_page/chatHomePage.dart';
import 'package:chat_page/AppColorCodes.dart';
import 'package:chat_page/signUpPage/signUpNoAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  //const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                // Image.asset(
                //   MediaQuery.of(context).platformBrightness == Brightness.light
                //       ? "assets/lightmode2.png"
                //       : "assets/darkmode.png",
                //   height: 256,
                // ),
                //Image.asset("assets/icons/facebook.svg",color: pPrimaryColor,height: 256),
                SvgPicture.asset(
                             "assets/icons/chat2.svg",
                           // color: Theme.of(context).textTheme.bodyText1!.color,
                            color: pPrimaryColor,
                            height: 200,
                            width: 200,
                          ),
                
                 Spacer(),
                 MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  padding: const EdgeInsets.all(pDefaultPadding * 0.75),
                  color: pPrimaryColor,
                  minWidth: double.infinity,
                  onPressed:  () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(),
                  ),
                ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white,fontFamily: 'Sacramento',fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3.0),
                  ),
                ),
              // PrimaryButton(
              //   text: "Sign In",
              //   press: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Signin(),
              //     ),
              //   ),
              // ),
              SizedBox(height: pDefaultPadding * 1.5),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  padding: const EdgeInsets.all(pDefaultPadding * 0.75),
                  color: pSecondaryColor,
                  minWidth: double.infinity,
                  onPressed:  () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signin(),
                  ),
                ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white,fontFamily: 'Sacramento',fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3.0),
                  ),
                ),
              // PrimaryButton(
              //  // color: Theme.of(context).colorScheme.secondary,
              //   text: "Sign Up",
              //   press: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin())),
              // ),
              Spacer(flex: 2),
              // RawMaterialButton(
              //     onPressed: () {},
              //     elevation: 2.0,
              //     fillColor: Colors.white,
              //     //textStyle: TextStyle('hii'),
              //     child: Icon(
              //       Icons.chat_rounded,
              //       size: 35.0,
              //       color: pPrimaryColor,
              //     ),
              //     padding: EdgeInsets.all(15.0),
              //     shape: CircleBorder(),
              //   ),
              
              ],
            ),
          )
        ),
      ),
    );
  }
}
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    //this.color = pPrimaryColor,
    this.padding = const EdgeInsets.all(pDefaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  //final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: pPrimaryColor,
      minWidth: double.infinity,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: Colors.white,fontFamily: 'Sacramento',fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 3.0),
      ),
    );
  }
}
