import 'package:flutter/material.dart';


import 'package:flutter/material.dart';


class Step4 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Agility Training Steps"),),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Agility Training Drill #1: Lateral Pylometric Jumps",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),textAlign: TextAlign.start,),
                  SizedBox(height: 20,),
                  Text("How to Do Lateral Plyometric Jumps",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Text("Only perform this exercise after a thorough warm up. You will want to begin with nothing more than a line on the floor until you are comfortable with side-to-side jumping.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                          Text("1.With feet no more than hip-width apart, bend your knees to squat straight down. Keep your weight on your heels.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                          SizedBox(height: 10,),
                          Text("2.Shift weight from heels to toes as you begin your jump, quickly push upward and sideways toward the other side of the line. Land softly and absorb the shock by squatting deeply. Repeat jumping back and forth over the line while keeping your shoulders and hips square and facing forward. You can vary your landing so that you land and rebound on both feet at once, or land on one foot first and rebound with a short double-step.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                          SizedBox(height: 10,),
                          Text("3.Perform for 30- to 60-second intervals. In a workout, rest for 60 to 90 seconds, then repeat for three sets. Or, add them to a circuit training routine.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:<Widget> [
                              Text("Agility Training Drill #2: Forward Running, High-Knee Drills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
                              SizedBox(height: 20,),
                              Text("How to Do Lateral Plyometric Jumps",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),
                              SizedBox(height: 20,),
                              Text("Only perform this exercise after a thorough warm up. You will want to begin with nothing more than a line on the floor until you are comfortable with side-to-side jumping.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),textAlign: TextAlign.justify,),
                              SizedBox(height: 20,),

                              Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:<Widget> [
                                      Text("1.With feet no more than hip-width apart, bend your knees to squat straight down. Keep your weight on your heels.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                      SizedBox(height: 10,),
                                      Text("2.Shift weight from heels to toes as you begin your jump, quickly push upward and sideways toward the other side of the line. Land softly and absorb the shock by squatting deeply. Repeat jumping back and forth over the line while keeping your shoulders and hips square and facing forward. You can vary your landing so that you land and rebound on both feet at once, or land on one foot first and rebound with a short double-step.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                      SizedBox(height: 10,),
                                      Text("3.Perform for 30- to 60-second intervals. In a workout, rest for 60 to 90 seconds, then repeat for three sets. Or, add them to a circuit training routine.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                      SizedBox(height: 10,),

                                    ],
                                  )
                              ),
                            ],
                          ),
                        ]),
                  )]

            )));
  }
}
