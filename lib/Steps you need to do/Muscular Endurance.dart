import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class Step5 extends StatelessWidget {


  String content =
     "Muscular Endurance Training Drill #1:Pike Crunch "
  "\nSteps on how to do a Pike Crunch"
      "\n1.Lie on a mat face up."
      "\n2.Extend your legs straight up in the air over your hips and extend your arms above your head."
      "\n3.Crunch up by lifting your pelvis about an inch off the floor and reaching your hands toward your feet. Your shoulders and lower back should rise off the floor as well."
      "\n4.Keeping your legs and arms straight, slowly lower your body back to starting position."
      "\nMuscular Endurance Training Drill #2: Push-Ups"
  "\nHow to Do a Push-Up"
  "\nBuild the muscles in your shoulders and chest with this foundational exercise."
  "\nSTEPS:"

  "\n1.Get down on all fours, placing your hands slightly wider than your shoulders."
  "\2.Straighten your arms and legs."
  "\3.Lower your body until your chest nearly touches the floor."
  "\n4.Pause, then push yourself back up."
  "\n5.Repeat."

  "\nMuscular Endurance Training Drill #3: Lunges"
  "\nHow to do a lunge"
  "\n1.Start in a standing position with your feet hip-width apart."
  "\n2.Step forward longer than a walking stride so one leg is ahead of your torso and the other is behind. Your foot should land flat and remain flat while it’s on the ground. Your rear heel will rise off of the ground."
  "\n3.Bend your knees to approximately 90 degrees as you lower yourself. Remember to keep your trunk upright and core engaged."
  "\n4.Then, forcefully push off from your front leg to return to the starting position."

      "\nMuscular Endurance Training Drill #4: Sit-ups"
  "\nThe Basic Sit-up for Beginner"
  "\n1.Lie down on your back, with your feet on the floor, knees bent."
  "\n2.Place your hands on either side of your head in a comfortable position."
  "\n3.Bend your hips and waist to raise your body off the ground. Make sure you keep looking straight ahead, keeping your chin off your chest in a relaxed position."
  "\n4.Lower your body back to the ground into the starting position."
  "\n5.Repeat"

      "\nMuscular Endurance Training Drill #5: Pull-ups"
      "\nMuscular Endurance Training Drill #6: Burpees"
      "\nMuscular Endurance Training Drill #7: WeightLifting"
      "\nMuscular Endurance Training Drill #8: Planking"
      "\nMuscular Endurance Training Drill #9: Squats"
      "\nMuscular Endurance Training Drill #10: Deadlifts"
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '10 Muscular Endurance Training Steps'
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ReadMoreText(content, trimLines: 3, textAlign: TextAlign.justify, trimMode: TrimMode.Line,
            trimCollapsedText: 'Show More',
            trimExpandedText: 'Show Less',
            lessStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            moreStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
            style: TextStyle(
              fontSize: 20,
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}


