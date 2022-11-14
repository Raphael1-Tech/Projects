import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class Step3 extends StatelessWidget {


  String content =
    "Coordination Training Drill #1: Balloon Tossing"
  "\nThis fun partner exercise has you catching and bumping the ballon back and forth with each other using your hands, heads, and other body parts."
  "\nChange the angles and speeds to keep it unpredictable, and try starting out facing different directions or work on standing closer together or further apart."
  "\nYou’ll see, this game can be a lot more challenging than it looks."
      "\nCoordination Training Drill #2: Juggling"
  "\nMore than just for those creepy clowns at birthday parties, juggling is a great way to develop rhythm and timing."
  "\nStart with slow circles with just two balls, finding your pacing and coordination between both hands, then add the third ball. It’s amazing how the addition of that extra ball can make you speed up too much and lose your rhythm."
  "\nThe benefit of this exercise is in the repetition and the awareness of how off-beat you can be when you are flustered."

      "\nCoordination Training Drill #3: Small Ball Tossing"
  "\nAnother partner exercise, this time with a small ball, this drill allows for faster speeds than with balloons."
  "\nChange up the speeds, angles and throwing patterns for endless variations. Also work on facing away, then your partner tells you to turn as she tosses the ball over. This requires a quick orientation of direction that you don’t get from simply watching the ball as you catch it."

      "\nCoordination Training Drill #4: Jump Rope Drills"
  "\nA classic conditioning exercise, jumping rope also works on hand/foot/implement coordination when you progress beyond two foot hopping."
  "\nRunning in place, one foot multiple hops, and crisscrossing are all options you can play with. Keep the rope moving at a steady pace while you get fancy in your footwork, and jumping rope can be an incredible coordination drill that teaches you how to maintain rhythm and control while fatigued."

      "\nCoordination Training Drill #5: Target Practice"
  "\nA staple hand/eye drill, target practice involves the complex but very natural skill of throwing and accurately sighting and aiming that toss."

  "\nIt’s both surprisingly difficult and addicting to practice hitting at a target."

  "\nStart close to the target and progressively move further away from it, and also play with standing at different angles rather than directly in front of it. You can add another level of difficulty by turning away, then quickly turning and aiming for the target."

      "\nCoordination Training Drill #6: Ball Toss from Different Positions"
  "\nBack to the ball toss, you can vary your orientation and positioning to add even more variety to the activity."
  "\nTry on both knees, moving in a squat, lying on your back or stomach or side, lunge positions–whatever feels most challenging and fun."
  "\nThis is a great chance to incorporate some mobility work into your coordination drills."

      "\nCoordination Training Drill #7: Balloon Hockey"
  "\nUsing a balloon instead of a small bean bag or “hacky sack” slows down the rate of fall, making this an easier exercise, though the ballon’s lightness can be a bit more unpredictable when you hit it strongly."
  "\nWork on finessing your movements to keep the balloon up in the air and play with the positioning of your foot and body. Again, different positioning changes the exercise entirely, so work from standing, squatting, kneeling, and on your back."
      "\nCoordination Training Drill #8: Dribbling"
  "\nDribbling a small ball as you would a larger basketball is more unpredictable with the size of the ball necessitating changes in how hard you hit."
  "\nThe distinct speed you need to maintain the right angles requires a good amount of practice and perseverance."
  "\nPractice dribbling with one hand and switching back and forth between both hands. Play with different speeds, and dribbling closer to the ground or further away from it. There are many possibilities here."
      "\nCoordination Training Drill #9: Wall Ball Bounce"
  "\nWhen you don’t have someone available to toss around a ball with you, all you need is a solid surface in front of you and bouncy ball. When you switch up how you toss the ball, and the angles from which you aim for the wall, there’s little predictability in the way the ball returns to you."
  "\nWork on throwing the ball from different distances and aiming for different points on the wall, or aim for the floor so that the ball bounces off the wall."

      "\nCoordination Training Drill #10: Targeting Through Rings"
  "\nThis is another version of target practice, where you are now tossing objects through an object with an open area. Hoops, rings, cardboard cutouts, large to small openings–these are all different sighting stimuli for targeting, and they add even more variation to your target practice."

  "\nThe further away you are from the rings or other open area, the harder it will be to make your target. See how challenging you can make this fun drill!"
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '10 Coordination Training Steps'
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


