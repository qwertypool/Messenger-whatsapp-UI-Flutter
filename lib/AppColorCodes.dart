import 'package:flutter/material.dart';

// const Color pPrimaryColor = Color(0xFFba2d65);
// const Color pMedColor = Color(0xFFf06292);
// const Color pSecondaryColor = Color(0xFFff94c2);
// const Color pContentColorLightTheme = Color(0xFF1D1D35);
// const Color pContentColorDarkTheme = Color(0xFFF5FCF9);
// const Color pWarninngColor = Color(0xFFF3BB1C);
// const Color pErrorColor = Color(0xFFF03738);
// const pDefaultPadding = 20.0;

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
    
    return Container(
      child: Column(
        children: [
          Text('Choose your theme',style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color,fontSize: 15,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             // Spacer(),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: RawMaterialButton(
              onPressed: (){
                setState(() {
                pPrimaryColor = Color(0xFFba2d65);
                pMedColor = Color(0xFFf06292);
                pSecondaryColor = Color(0xFFff94c2);
                });
              },
              elevation: 3.0,
              // fillColor: Colors.white,
              fillColor: Theme.of(context).textTheme.bodyText1!.color,
              child: Icon(
                Icons.color_lens,
                size: 50.0,
                color: Colors.pink[900],
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: RawMaterialButton(
              onPressed: (){
                setState(() {
                pPrimaryColor = Color(0xFF1a746b);
                pMedColor = Color(0xFF26a69a);
                pSecondaryColor = Color(0xFF51b7ae);
                });
              },
              elevation: 3.0,
              // fillColor: Colors.white,
              fillColor: Theme.of(context).textTheme.bodyText1!.color,
              child: Icon(
                Icons.color_lens,
                size: 50.0,
                color: Colors.teal,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: RawMaterialButton(
              onPressed: (){
                setState(() {
                pPrimaryColor = Color(0xFFc79100);
                pMedColor = Color(0xFFffc107);
                pSecondaryColor = Color(0xFFfff350);
                });
              },
              elevation: 3.0,
              // fillColor: Colors.white,
              fillColor: Theme.of(context).textTheme.bodyText1!.color,
              child: Icon(
                Icons.color_lens,
                size: 50.0,
                color: Colors.yellow,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
          ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: RawMaterialButton(
              onPressed: (){
                setState(() {
                pPrimaryColor = Color(0xFF6a0080);
                pMedColor = Color(0xFF9c27b0);
                pSecondaryColor = Color(0xFFd05ce3);
                });
              },
              elevation: 3.0,
              // fillColor: Colors.white,
              fillColor: Theme.of(context).textTheme.bodyText1!.color,
              child: Icon(
                Icons.color_lens,
                size: 50.0,
                color: Colors.purple,
              ),
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder(),
          ),
            ),
            ],
          ),
        ],
      ));
  }
}

class RawMaterialButtonWidget extends StatelessWidget {
  const RawMaterialButtonWidget({
    Key? key,
    required this.color,
    required this.press,
  }) : super(key: key);
  final Color color;
  final Function press; 
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){},
      elevation: 2.0,
      fillColor: Colors.white,
      child: Icon(
        Icons.color_lens,
        size: 25.0,
        color: color,
      ),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
