import 'dart:ui';




import 'package:fitness_app/screens/Agility.dart';
import 'package:fitness_app/screens/Balance.dart';
import 'package:fitness_app/screens/Muscular%20Endurance.dart';
import 'package:fitness_app/screens/Coordination.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/round_info_container.dart';
import 'package:fitness_app/screens/Flexibility.dart';

import '../Navigation dart/naviigation_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:NavigationDrawer(),
      appBar: AppBar(
        title: Text(""),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/4.jpg'),
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
            child: SingleChildScrollView(
              child: Expanded(
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
                      "Time to train your\n bodies",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                       ),
                  textAlign: TextAlign.center,
                       ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Exercise",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Flexibility(),
                          )),
                          child: RoundInfoContainer(
                            title: 'Flexibility',
                            subtitle: 'Training',
                          ),
                        ),
                        _divider(),
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Coordination(),
                          )),
                          child: RoundInfoContainer(
                            title: "Coordination",
                            subtitle: 'Training',
                          ),
                        ),
                        _divider(),
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MuscularEndurance(),
                          )),
                          child: RoundInfoContainer(
                            title: "Muscular Endurance",
                            subtitle: 'Training',
                          ),
                        ),
                        _divider(),
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Agility(),
                          )),
                          child: RoundInfoContainer(
                            title: "  Agility",
                            subtitle: 'Training',
                          ),
                        ),
                        _divider(),
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Balance(),
                          )),
                          child: RoundInfoContainer(
                            title: "Balance",
                            subtitle: 'Training',
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 50,),
                    Text(
                      "7x4 CHALLENGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Flexibility(),
                          )),
                          child: RoundInfoContainer(
                            title: 'FULL BODY',
                            subtitle: '7X4 CHALLENGE',
                          ),
                        ),
                        _divider(),
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Coordination(),
                          )),
                          child: RoundInfoContainer(
                            title: "LOWER BODY",
                            subtitle: '7X4 CHALLENGE',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Text(
                      "BEGINNER",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Flexibility(),
                      )),
                      child: RoundInfoContainer(
                        title: 'ABS',
                        subtitle: "BEGINNER",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Coordination(),
                      )),
                      child: RoundInfoContainer(
                        title: 'CHEST',
                        subtitle: "BEGINNER",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Coordination(),
                      )),
                      child: RoundInfoContainer(
                        title: 'ARM',
                        subtitle: "BEGINNER",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Coordination(),
                      )),
                      child: RoundInfoContainer(
                        title: 'LEG',
                        subtitle: "BEGINNER",
                      ),
                    ),
                    _divider(),
                    GestureDetector(
                      onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Coordination(),
                      )),
                      child: RoundInfoContainer(
                        title: 'SHOULDER & BACK',
                        subtitle: "BEGINNER",
                      ),
                    ),
                  ],
                ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  update () {}
  Widget _divider() {
    return Container(
      width: 1.2,
      height: 35,
      color: Colors.white.withOpacity(.6),
    );
  }
}
