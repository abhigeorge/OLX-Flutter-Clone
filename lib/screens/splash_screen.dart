import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const colorizeColors = [
      Colors.blue,
      Colors.blueGrey,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
      fontFamily: 'Lato',
    );


    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/logo.png',color: Colors.white,),
            SizedBox(height: 10,),

        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Boat Seller',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
          ],
        ),
      ),
    );
  }
}
