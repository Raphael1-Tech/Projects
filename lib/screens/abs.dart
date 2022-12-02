import 'dart:ui';
import 'package:fitness_app/models/Abs.dart';
import 'package:fitness_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/widgets/round_info_container.dart';



class abs extends StatelessWidget {
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
                        image: AssetImage('assets/images/abs.jpg'),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 30.0, horizontal: 30.0),
                          child: Text(
                            'ABS\nWORKOUT CHALLENGE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundInfoContainer(
                              title: 'ABS',
                              subtitle: 'TRAINING',
                            ),
                            Divider(),
                            RoundInfoContainer(
                              title: '20',
                              subtitle: 'mins',
                            ),
                            Divider(),
                            RoundInfoContainer(
                              title: '16',
                              subtitle: 'Work-outs',
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
                  itemCount: HEY.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      isThreeLine: false,
                      leading: Container(
                        width: 90.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(HEY[index]['leading'][0]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      title: Text(HEY[index]['title']),
                      subtitle: Text(
                          '${HEY[index]['subtitle']}\n${HEY[index]['leading'][1]}'
                      ),

                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }

}
