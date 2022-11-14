import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class FLEX2 extends StatelessWidget {


  String content =
      "All About Balance Exercise and the Different Ways to Practice it"
      "\nBalance exercises keep our bodies strong and stable. We should practice it along with other forms of exercise to gain maximum benefit. Balance is required for everything we do, including activities such as bending, walking, running, or even getting up from a chair.\nHence training for balance will help improve your daily life and also prevent falls and injuries that could happen due to lack of balance.Any type of activity that keeps you moving can actually help you maintain your balance. Still, it is necessary to perform specific balance exercises that improve your balance."
      "\nAny type of activity that keeps you moving can actually help you maintain your balance. Still, it is necessary to perform specific balance exercises that improve your balance."
      "\nWho Can Benefit from Balance Exercises?"
      "\nThough balance exercises help everyone, a few people can benefit more than others. "
      "\nBalance exercises are especially important for older people who have weak muscles. When older individuals perform these "
      "\nexercises regularly, they can strengthen their muscles and avoid falls and injuries.Also,with older people, injuries take time to heal, and recovery is much slower. Hence, strengthening the core, lower back, and leg muscles can help maintain the right balance."
      "\nBalance exercises can also be helpful to athletes, who suffer from frequent ankle injuries and ligament issues. Some types of these exercises may also help individuals who suffer from vertigo by minimizing the symptoms. However, you should start the balance exercises slowly and then move on to more repetitions or probably holding on in a specific position for a longer time."
      "\nBenefits of Balance Exercises"
      "\n1.Improves body awareness"
      "\nBalance exercises give you a feeling that your limbs are positioned solidly in place; this is called proprioception. It improves your body awareness, which may reduce the likelihood of falls and injuries."
      "\n2. Helps with coordination"
      "\nWith this exercise, your entire body works together. Hence, practicing these exercises regularly can help keep you coordinated in your everyday life."
      "\n3. Increases joint stability"
      "\nAnother benefit of balance exercise is improving joint stability. It keeps your hips, shoulders, knees, and ankles stable. When these parts of the body are stable, it can prevent many injuries, including knee problems and ankle issues."
      "\n4. Improves reaction time"
      "\nWhen you practice balance exercises, you can improve your reaction time to a great level. While practicing these exercises, if you suddenly stumble or slip, your body will automatically try to re-balance to avoid falling. Thus, this will improve the reaction time in your daily life as well."
      "\n5. Overall health benefits"
      "\nMaking balance exercises a part of your exercise routine will help in overall and long-term health. As we get older, our health and balance can sometimes deteriorate, and hence practicing these exercises can keep us strong and healthy throughout."
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Balance Training Health Benefits'
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: ReadMoreText(content, trimLines: 4, textAlign: TextAlign.justify, trimMode: TrimMode.Line,
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


