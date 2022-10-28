import 'dart:ui';

import 'package:fitness_app/Activity/Flexibility.dart';
import 'package:fitness_app/Steps%20you%20need%20to%20do/Flexibility.dart';
import 'package:fitness_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/round_info_container.dart';
import 'package:fitness_app/models/Flexibility.dart';

class Flexibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/split.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                  child: Container(
                    color: Colors.white.withOpacity(.123),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chevron_left),
                      iconSize: 30,
                      color: Colors.white,
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()))
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 20.0,
                left: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Flexibility or Limberness is the range of movement that you can achieve with your joints and muscles a number of physical activities may improve flexibility\n such as stretching,yoga,gymnastics and dance.",
                    style: TextStyle(
                      fontSize:22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 30.0, horizontal: 20.0),
                      child: Text(
                        'FLEXIBILITY\nWORKOUT',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundInfoContainer(
                          title: '10',
                          subtitle: 'Exercise',
                        ),
                        _divider(),

                          GestureDetector(
                            onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Step4(),
                            )),
                            child: RoundInfoContainer(
                              title: "Procedure in ",
                              subtitle: "Things You'll Do",
                            ),
                          ),
                        _divider(),
                        GestureDetector(
                          onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FLEX4(),
                          )),
                          child: RoundInfoContainer(
                            title: 'Flexibility',
                            subtitle: 'Benefits',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Things You Will Do:',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: round2.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ListTile(
                    isThreeLine: true,
                    leading: Container(
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(round2[index]['leading'][0]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    title: Text(round2[index]['title']),
                    subtitle: Text(
                        '${round2[index]['subtitle']}\n${round2[index]['leading'][1]}'
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }

  Widget _divider() {
    return Container(
      width: 1.2,
      height: 35,
      color: Colors.white.withOpacity(.6),
    );
  }
}
