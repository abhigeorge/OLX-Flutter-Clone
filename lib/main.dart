import 'package:boat_seller/screens/login_screen.dart';
import 'package:boat_seller/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashScreen());
        } else {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: Colors.cyan.shade900,
              fontFamily: 'Lato'
            ),
            home: LoginScreen(),
          );
        }
      },
    );
  }
}



