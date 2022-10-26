import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class FLEX1 extends StatelessWidget {


  String content =
      'Agility is our body’s ability to be fast and nimble, change direction, and change the positioning of our body - while our body is actively in motion.\nFor some athletes, this is easier said than done. However, agility training can help to improve the skills, which result in enhanced athletic performance.\nRegardless of the sport you play, speed and agility are essential to taking your athletic performance to the next level.\nThe benefits of agility training benefits not only improves athletic performance, agility also improves our daily movement.\nWhether you want to build explosive power, increase speed, improve recovery times, or simply want to improve balance, agility training is important for maintaining athletic performance.'
      '\nWhich Sports Benefit from Agility Training Exercises?'
  "\nAgility exercises benefit athletes in any sport that requires movement! That’s right, whether you are moving on the field, the ice, or the balance beam - you will benefit from agility training"

  '\nWhether you’re training for strength, endurance, or a combination of both, every athlete will benefit from improved balance, quicker feet, and faster reaction times.\nAdding agility training into your training routine can benefit:'
  '\nFootball players'
  '\nSoccer players'
  '\nBaseball players'
  '\nSoftball players'
  '\nTennis players'
  '\nVolleyball players'
  '\nBasketball players'
  '\nHockey players'
  '\nGymnastics'
  '\nMMA fighters'
  '\nWrestlers'
  '\nAnd more'
  '\nBENEFITS OF AGILITY TRAINING FOR ATHLETES'
  '\n1.Injury Prevention'
  '\nWhen was the last time you pulled a muscle in your lower back due to an improper lift position?\nOr the last time you tore a ligament in your knee due to a simple misstep?Unfortunately, these injuries are all too common in athletics.\nMany avoidable sports-related injuries occur when our body falls out of alignment while we are in the middle of dynamic motion (i.e. jumping, running, or lifting).'
  "\nAgility training improves flexibility, balance, and control. Agility helps the body to maintain proper alignment and posture during movement. Additionally, agility drills encourage our body to learn how to maintain correct body placement.With proper agility training, sensitive areas such as the lower back, shoulders, and ankles are protected while moving quickly."
  "\n2. Increased Cognitive Function"
  "\nAgility training helps more than the muscles in your body.According to a recent study managed by the Air Force Research Laboratory, as cited in Men’s Health, agility training can improve your cognitive performance.Participants in the study, all military personnel, were divided into two groups for six weeks of training. One group participated in the military's standard physical training program (i.e. jogging with jumping jacks, and burpees). The second group participated in programs that included agility drills (i.e. ladder drills, shuttle runs, etc.)."
  "\nAccording to the study, “after six weeks, the first group increased their endurance. On the other hand, the group performing agility training improved their VO2 max, athletic footwork, memory, and concentration.\nAgility training includes components of learning, focus, balance, and coordination. This type of training stimulates richer connections among multiple brain regions by directing them to work together. At first, your responsive movements may feel forced.\nHowever, with practice, they will become more natural."
  "\n3.Improve Your Coordination and Balance"
  "\nAgility training encourages our body to improve balance during dynamic movement. When we regularly practice hand-eye coordination, fast stops and starts, and agility speed drills, it trains our body to work as a cohesive unit. When our body is working in sync, our movements become more fluid, resulting in smooth, coordinated transitions."
  "\n4. Improve Your Recovery Times"
  "\nWe've all been there. An intense conditioning session can leave you with sore muscles and depleted energy levels the next day. However, the bursts of movement incorporated with agility training, when practiced over a sustained period of time, help to build the strength of our musculoskeletal system. A stronger musculoskeletal system can lead to shortened post-workout recovery times."
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Agility Training Health Benefits'
        ),
        backgroundColor: Colors.grey,
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
              fontSize: 25,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}


