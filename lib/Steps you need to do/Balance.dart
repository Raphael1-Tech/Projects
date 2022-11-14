import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class Step2 extends StatelessWidget {


  String content =
  "Balance Training Drill #1: Tightrope Walk"
     "\nHold your arms out straight from your sides. Walk in a straight line, pausing for one to two seconds each time you lift a foot off the ground. To help you maintain your balance, focus on a spot in the distance and keep your head straight. Take 10 to 20 steps before moving onto the next exercise."
  "\nBalance Training Drill #2: Rock the Boat"
  "\nDraw your knees toward your chest, lift your head, and grab your legs below the knees (A). Rock up and balance on your glutes (B). Keeping your back long and chest lifted, straighten your legs and extend your arms (C). Hold for three seconds, then tuck in and roll back to start. That's one rep. Do three sets of 12 to 15 reps, resting for up to 30 seconds between sets."
  "Balance Training Drill #3: Flamingo Stand"
  "\nLift your right foot about an inch off the floor and balance on your left foot. Hold the move for 10 seconds, repeat 10 times, then alternate legs. The goal of this exercise is to get strong enough to eventually hold the pose—without using the chair for balance—for up to a minute."
      "\nBalance Training Drill #4: Banded triplanar toe taps"
  "\nMake sure the area around and behind you is free of any debris that may cause you to trip, then stand in front of the platform with your arms at your sides. Raise your right foot and place the ball of that foot on the platform, keeping your left foot flat on the ground. This is your starting position."
  "\n1.Push off the ground with your left foot and switch legs mid-air, so your left foot touches the platform and your right foot is on the ground. Your arms can remain at your sides or alternate with your legs, like they do when running."
  "\n2.Repeat alternating toe taps. If you're new to this exercise, go slowly until you feel comfortable with the movement pattern and your technique is correct. Once, you're ready, speed up the pace, merely tapping the edge of the platform when alternating feet."
  "\n3.Step both feet back and onto the floor to end this exercise."
      "\nBalance Training Drill #5: Single leg cross-body punches"
  "\nSteps you need to know about this exercise:"
  "\nHold two dumbbells at chest height and move into a single-leg, quarter-squat position. With control, alternate “punching” the weights across the body, while maintaining stability in the stance leg."
  "\nAmp it up: Perform the exercise on a non-slip mat or foam pad to create more instability and increase the core challenge."
  "\nPare it down: Perform the movement without weights, using only bodyweight."
"\nBalance Training Drill #6: Chair leg raises"
  "\nHow to do Roman Chair Leg Raise:"
  "\nStep 1: Position yourself in an upright roman chair. Be sure your back is upright and against the back of the chair. Also, be sure your elbows are directly under your shoulders when placing them on the pad."
  "\nStep 2: Begin exercise by slowly raising your legs up until they are parallel to the ground, while keeping them as straight as possible."
  "\nStep 3: Slowly lower legs back down to the starting position. Be sure you lower legs all the way back down before raising legs back up."
      "\nBalance Training Drill #7: Paloff press with rotation"
  "\nHow To Perform Exercise"
  "\nSteps:"

  "\n1.) Start off by connecting a cable to a high pulley cable machine at shoulder height level and stand to the side of the machine, grasping the cable with both hands."
  "\n2.) Slowly pull the cable in towards your chest and squeeze your pecs, hold this position for a count then push the cable back out in front of your chest."
  "\n3.) Then, while squeezing your abs, twist through your hips in the opposite direction of the machine so that you get a full rotation and feel a stretch in your abdominals."
  "\n4.) Return back to the starting position and repeat for as many reps and sets as you desire."
      "\nBalance Training Drill #8: Heel toe Walking"
  "\nPosition the heel of one foot just in front of the toes of the other foot. Your heel and toes should touch or almost touch. Choose a spot ahead of you and focus on it to keep you steady as you walk. Take a step. Put your heel just in front of the toe of your other foot. Repeat for 20 steps."
      "\nBalance Training Drill #9: Tree Pose"
  "\nHow to Do Tree Pose"
  "\nBefore performing any new exercise, consult your doctor to determine if it’s right for you. Tree pose is a beginner position that requires coordination and balance. Here is a step-by-step guide on how to perform tree pose:"
  "\n1.Get into position. Tree pose often starts from mountain pose (or Tadasana), with both feet planted firmly on the ground and your weight adequately distributed so that you are balanced."
  "\n2. Bend one leg at the knee. Choose the leg you are going to fold in first. If your left leg is your standing leg, keep your left foot planted on the ground, and slowly bend in your right leg at the right knee so that the sole of your right foot rests against your left inner thigh (known as the half-lotus position in Bikram yoga). Point the knee of your bent leg outward, away from your body."
  "\n3. Lengthen your body. Clasp your hands together in Anjali Mudra (also called the “prayer position”) and raise your arms above your head. In this form, your head, shoulders, pelvis, and left foot should align vertically. The top of your torso should lift slightly, with your tailbone extending towards the ground."
  "\n4. Hold and repeat. Hold the pose for as long as necessary, making sure to breathe properly. When you’re ready to switch legs, exhale, and return to mountain pose to start again."
      "\nBalance Training Drill #10:  Marching"
      "\nHow to do a Marching Exercise"
  "\n1.Stand with a chair in front of you and a wall behind you. If you begin to fall, you may use them for support. Standing in a corner will also work."
  "\n2.Stand with your feet slightly apart (as you normally stand) and your arms at your side."
  "\n3.March in place, lifting your knees high toward the ceiling."
  "\n4.Do this 20 times."
  "\n5.Do this exercise twice a day. Try to progress to doing this 30 times and then with your eyes closed."
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '10 Balance Training Steps'
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


