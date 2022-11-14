import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class FLEX3 extends StatelessWidget {


  String content =
      "The Benefits of Coordination"
  "\nOften the unsung hero of physical exercise, the benefits of coordination are many.\nThe development of better coordination helps with many aspects of physical well being, but increasingly, studies are showing that developing better coordination can help to combat the risk of injury later in life and help improve mental health, too."
  "\nBy incorporating some coordination exercises into your daily routine, you can begin to improve multiple aspects of your wellbeing. Not only can coordination training help you improve your technique and form during exercise, but it could also positively affect your mood and mental health."
      "Physical benefits of coordination training"
      "The foundation of most exercises is a high level of coordination, so it shouldn’t be a surprise that it can help you reap the maximum reward from your fitness goals. Practicing coordination training can:"
  "\n1.Burn calories, build muscle and tone the body"
  "\n2.Increase your daily energy levels, by helping your cardiovascular system work more efficiently"
  "\n3.Improve flexibility and agility"
  "\n4.Manage ailments like cardiovascular problems and hypertension."
  "\nMental benefits of coordination training"
  "\nAlthough there are plenty of physical benefits to training your coordination, like most forms of exercise, it can improve your mental health. Some of the advantages of coordination training to mental health and brain function include:"
  "\n1.Enhancing memory and improving concentration"
  "\n2.Stimulating the release of endorphins that are considered beneficial in inducing relaxation of the mind. After all, exercise is known to help manage stress and depression."
  "\n3.Improving mental agility and self-confidence"
  "\nHow to Improve Coordination?Exercises for balance and agility"
  "\nBalance is the ability to control your body in space while performing static movements, and it’s an integral component of coordination. It's the cornerstone of performing the most basic of functions, from walking up a flight of stairs to effectively completing high-intensity workouts."
  "\nEffective movement requires a stable core, which we can enhance through specific exercises to improve balance. Additionally, balance training plays a role in promoting general fitness and quality of life and lessens the risk of injury—this is especially important as we grow older."
  "\nIt’s not too late to coordinate"
  "\nBy now, it should be pretty clear that working to improve your coordination and balance is a vital component of most activities. Whether you're looking to improve your form or efficiency for maximum gain, or just hoping to lower the risk of injury or strain, it’s never too late to start improving your coordination."
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Coordination Training Health Benefits'
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
              height: 2,
            ),
          ),
        ),
      ),
    );
  }
}


