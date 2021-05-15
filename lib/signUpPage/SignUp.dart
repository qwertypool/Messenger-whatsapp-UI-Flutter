import 'package:chat_page/ChatHomeScreen/chatHomePage.dart';
import 'package:chat_page/AppColorCodes.dart';
import 'package:chat_page/signUpPage/signUpNoAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                Spacer(),
                SvgPicture.asset(
                             "assets/icons/chat-bubble.svg",
                           // color: Theme.of(context).textTheme.bodyText1!.color,
                            color: pPrimaryColor,
                            height: 220,
                           // width: 220,
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
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 3.0),
                  ),
                ),
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
                    style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 3.0),
                  ),
                ),
              Spacer(flex: 2),
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
    this.padding = const EdgeInsets.all(pDefaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
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
