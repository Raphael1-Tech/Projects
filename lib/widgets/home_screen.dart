import 'dart:ui';

import 'package:fitness_app/screens/Muscular Strength.dart';
import 'package:fitness_app/screens/Speed.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/round_info_container.dart';
import 'package:fitness_app/screens/Flexibility.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home_image.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                color: Colors.white.withOpacity(.123),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 22.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.6),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'NEW',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'FULL - BODY KILLER\nWORKOUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "Let's Train your\n PHYSICAL BODY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                   ),
              textAlign: TextAlign.center,
                   ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkoutScreen(),
                      )),
                      child: RoundInfoContainer(
                        title: 'Flexibility',
                        subtitle: 'Training',
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkoutScreen1(),
                      )),
                      child: RoundInfoContainer(
                        title: 'Muscular Strength',
                        subtitle: 'Training',
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkoutScreen2(),
                      )),
                      child: RoundInfoContainer(
                        title: "Speed",
                        subtitle: 'Training',
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkoutScreen2(),
                      )),
                      child: RoundInfoContainer(
                        title: "Body Composition",
                        subtitle: 'Training',
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkoutScreen2(),
                      )),
                      child: RoundInfoContainer(
                        title: "Physical Intelligence",
                        subtitle: 'Training',
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WorkoutScreen2(),
                      )),
                      child: RoundInfoContainer(
                        title: "Muscular Endurance",
                        subtitle: 'Training',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      width: 1.2,
      height: 35,
      color: Colors.white.withOpacity(.6),
    );
  }
}
