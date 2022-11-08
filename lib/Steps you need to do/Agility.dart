import 'package:flutter/material.dart';


class Step1 extends StatelessWidget {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agility Training Steps"),),
      body: SingleChildScrollView(
        controller: controller,
        child: Padding(
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
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [
                                  Text("Agility Training Drill #3: Lateral-Running, Side-to-Side Drill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
                                  SizedBox(height: 20,),
                                  Text("This exercise is ideal for court-sports, improving both knee and ankle stability.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 20,),
                                  Text("To do this exercise:",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 20,),
                                  Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [
                                  Text("1.Keeping a low center of gravity, step side-to-side through the ladder one foot at a time.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("2.Touch in each rung of the ladder with both feet.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("3.Land on the balls of the feet.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                    Text("4.Repeat right to left and left to right for a total of three sets.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                    SizedBox(height: 10,),
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [
                                  Text("Agility Training Drill #4: Dot Drills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
                                  SizedBox(height: 20,),
                                  Text("Dot drills develop dynamic leg strength while increasing knee and ankle strength and stability. This is a great drill for any sport that requires quick changes of direction and solid landings (including soccer, basketball, racquetball, and skiing).",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 20,),
                                  Text("To do the dot drill, you will either need to purchase a dot drill mat or place five tape marks on the ground in the same pattern as the five dice.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 20,),
                                  Text("The dot drill involves three exercises:",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 20,),
                                  Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [
                                  Text("Exercise One", style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("1.Start with your feet on two dots on one side of the square.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("2.Jump to the center dot with both feet, and then jump to the two dots on the opposite end of the square.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("3.Jumping backward to the center dot and back to the starting position for one rep.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("4.Continue for a total of six reps per set.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("5.Complete three sets.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("Exercise Two", style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("1.Follow the same pattern as exercise one, but instead of jumping backward, jump up and spin around 180 degrees before continuing back the starting position.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("2.Complete three sets of six reps.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("Exercise Three", style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("1.Start with your feet on two dots on one side of the square.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("2.Following one step after the next, move your right foot the center dot, left foot to the forward dot, right foot to the forward dot, left foot the center dot, right foot back to the starting dot, and left foot back to the starting dot.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("3.Continue, picking up speed, for a total of six reps.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),
                                  Text("4.Complete three sets.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                  SizedBox(height: 10,),

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:<Widget> [
                                          Text("Agility Training Drill #5: Jump Box Drill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
                                          SizedBox(height: 20,),

                                                Container(
                                                padding: EdgeInsets.all(10),
                                                child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children:<Widget> [
                                                Text("Exercise One", style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold, color: Colors.black),textAlign: TextAlign.justify,),
                                                SizedBox(height: 10,),
                                                Text("1.Start by standing in front of the box. ", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                SizedBox(height: 10,),
                                                Text("2.Jump up onto the box, landing with both feet.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                SizedBox(height: 10,),
                                                Text("3.Jump back down from the box, then immediately jump back up.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                SizedBox(height: 10,),
                                                Text("4.Continue of one set of 10 reps.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                SizedBox(height: 10,),
                                                Text("5.Complete three sets.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                SizedBox(height: 10,),

                                                    Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children:<Widget> [
                                                    Text("Agility Training Drill #6: L Drill",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
                                                    SizedBox(height: 20,),
                                                    Text("Set Up: L shaped with 5 yards between each cone. Similar to a box, without the fourth corner.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),),
                                                    SizedBox(height: 20,),
                                                
                                                    Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children:<Widget> [
                                                    Text("Description", style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold, color: Colors.black),textAlign: TextAlign.justify,),
                                                    SizedBox(height: 10,),
                                                    Text("The L drill, also known as the 3 Cone, is another popular change-of-direction drill especially used by football coaches and scouts to measure agility.", style: TextStyle(fontSize: 14, fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                    SizedBox(height: 10,),
                                                    Text("Pattern",style: TextStyle(fontSize: 14, fontWeight:FontWeight.bold, color: Colors.black),textAlign: TextAlign.justify,),
                                                     SizedBox(height: 10,),
                                                    Text("Starting at the line, use a 3-point stance and come out low for five yards under control. Touch the line at the center cone,", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                    SizedBox(height: 10,),
                                                    Text("then return to the start and touch the line using the same hand. Turn and sprint back around the center cone, planting off your inside foot for a hard turn and figure 8 around the end cone, again planting with your inside foot", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                    SizedBox(height: 10,),
                                                    Text(" Make a sharp cut around the middle cone with your inside foot and sprint back towards the first cone, finishing the drill. Repeat this pattern going the other direction, always doing the same amount both to the right and the left.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
                                                    SizedBox(height: 10,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget> [
    Text("Agility Training Drill #7: Plank Jack",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
    SizedBox(height: 20,),

    Container(
    padding: EdgeInsets.all(10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget> [
    Text("1. Start in a plank position with your arms extended and hands under your shoulders. Feet should be together and your body should be in a straight line from your head to your heels.", style: TextStyle(fontSize: 14, fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
    SizedBox(height: 10,),
    Text("2.Engage your abs by pulling them in.",style: TextStyle(fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
    SizedBox(height: 10,),
    Text("3.Step your right foot out to the side. Bring it back to center.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
    SizedBox(height: 10,),
    Text("4.Step your left foot out to the side. Bring it back to center.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
    SizedBox(height: 10,),
    Text("5.Perform 8–10 reps on each leg.", style: TextStyle( fontWeight:FontWeight.normal, color: Colors.black),textAlign: TextAlign.justify,),
    SizedBox(height: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Text("Agility Training Drill #8: Shuttle Run",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
            SizedBox(height: 20,),      
            
            
            



    ],
                                                    )
                                                  ]),
    )],
                                              ),
                                            ]),
                                        )]
                                        )]),
                                          )]
                                                        )])
                                                  )])
                                            ])
                                          )])]))])]))])
      )));
                                      }
                                    }
