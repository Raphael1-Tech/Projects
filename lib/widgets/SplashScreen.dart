import 'dart:async';

import 'package:fitness_app/widgets/main.dart';
import 'package:fitness_app/widgets/home_screen.dart';
import 'package:fitness_app/widgets/splashscreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (_) => splashscreen1())));

    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/muscle.jpg'),
                width: 200,
                height: 200,
              ),
            ),
            Container(
              child: Text('Workout \t Buddy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        )


    );
  }
}