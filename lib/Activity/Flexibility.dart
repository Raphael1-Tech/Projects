import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class FLEX4 extends StatelessWidget {


  String content =
      'OVERVIEW\nStretching your body to become more supple and flexible offers many physical benefits. Such training allows for easier and deeper movements while building strength and stability.\nStretching your muscles and joints also leads to greater range of motion, improved balance, and increased flexibility.'
  '\n6  BENEFITS OF FLEXIBILITY TRAINING EXERCISES \nImproved flexibility produces a wide range of physical benefits and can have a positive effect on your overall well-being.\nHere are a few ways that increased flexibility is likely to help you.'
  '\n1. Fewer Injuries \nOnce you develop strength and flexibility in your body you’ll be able to withstand more physical stress. \nPlus, you’ll rid your body of any muscle imbalances, which will reduce your chance of getting injured during physical activity. \nCorrecting muscle imbalances requires a combination of strengthening the underactive muscles and stretching the overactive (tight) ones.'
  '\n2. Less Pain \nYour body is likely to feel better overall once you work on lengthening and opening your muscles.\nWhen your muscles are looser and less tense, you’ll experience fewer aches and pains.\nPlus, you may be less likely to experience muscle cramps.'
  '\n3. Improved Posture and Balance\nWhen you focus on increasing muscular flexibility your posture is likely to improve.\nWorking out your body allows you to have proper alignment and correct any imbalances.\nPlus, with an increased range of motion you may find it easier to sit or stand in certain ways.\nYoga has been shown to improve balance.'
  '\n4. A Positive State of Mind\nRegularly engaging in poses that stretch and open up your body can bring about feelings of relaxation.\nThe physical benefits can extend to a relaxed state of mind. \nYou may find it easier to unwind once your body feels better.'
  "\n5. Greater Strength\nIt's important to increase strength as you become more flexible.\nThis ensures your muscles will have the right amount of tension so that they're strong enough to support you and your movements, allowing you to become more physically fit."
  "\n6.Improved Physical Performance\nOnce you increase your flexibility to allow greater movement in your body you’ll be able to perform better physically.\nThis is in part because your muscles are working more effectively."
  '\nTHE BOTTOM LINE\nTaking steps to become more flexible can be a great way to connect to yourself and your body. You’re likely to feel more balanced and better overall once your body is more open, strong, and flexible.\nBe cautious about starting a stretching program if you have a chronic condition or injury.\nIf you have any health concerns speak to your doctor or physical therapist to decide upon the best approach.'
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Flexibility Training Health Benefits'
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


