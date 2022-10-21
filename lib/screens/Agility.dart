import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/round_info_container.dart';
import '../models/Agility.dart';


class Agility extends StatelessWidget {
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
                        image: AssetImage('assets/images/agility.webp'),
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
                          onPressed: () => Navigator.pop(context),
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
                        Text("Agility is the ability to change direction rapidly and requires physical capacity and technical skill to execute. \n It is an essential component of many sports and therefore health and fitness professionals should look to assess this skill when rehabilitating patients or optimizing a client's performance.",
                          style: TextStyle(
                            fontSize:22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 30.0),
                          child: Text(
                            'AGILITY\nWORKOUT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
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
                            RoundInfoContainer(
                              title: '30',
                              subtitle: 'Reps',
                            ),
                            _divider(),
                            RoundInfoContainer(
                              title: 'Agility',
                              subtitle: 'Benefit Facts',
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
                  itemCount: round5.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      isThreeLine: true,
                      leading: Container(
                        width: 90.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(round5[index]['leading'][0]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      title: Text(round5[index]['title']),
                      subtitle: Text(
                          '${round5[index]['subtitle']}\n${round5[index]['leading'][1]}'),
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
