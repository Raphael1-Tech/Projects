import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class FLEX5 extends StatelessWidget {


  String content =
      "Muscular strength and endurance are two important parts of your body’s ability to move, lift things and do day-to-day activities. Muscular strength is the amount of force you can put out or the amount of weight you can lift. Muscular endurance is how many times you can move that weight without getting exhausted (very tired)."
      "\nBenefits of Muscular Strength and Endurance"
  "\nMuscular strength and endurance are important for many reasons:"
  "\n1.Increase your ability to do activities like opening doors, lifting boxes or chopping wood without getting tired."
  "\n2.Reduce the risk of injury."
  "\n3.Help you keep a healthy body weight."
  "\n4.Lead to healthier, stronger muscles and bones."
  "\n5.Improve confidence and how you feel about yourself."
  "\n6.Give you a sense of accomplishment."
  "\n7.Allow you to add new and different activities to your exercise program."
  "\nImproving Muscular Strength and Endurance"
  "\nThere are many ways to improve muscular strength and endurance. A gym or fitness centre is a good place to go if you’re interested in doing resistance training (also called strength training, weight training or weight lifting). This involves working a muscle or group of muscles against resistance to increase strength and power."
  "\nResistance training can include using:"

  "\n- Equipment like medicine balls or weight machines"
  "\n- Resistance tubes or bands during exercises"
  "\n- Your own body as a weight, as you would do during push-ups or sit-ups"

  "\nOf course, you don’t have to go to a gym or buy exercise equipment to improve muscular strength and endurance. Doing normal daily activities like lifting groceries or walking up and down stairs can also help. You can also do many exercises at home that don’t need equipment, such as push-ups and sit-ups. All you have to do is challenge your muscles to work harder or longer than they usually do."
  "\nRemember, if you’re going to do strengthening exercises that involve lifting, it’s important to use the correct techniques."
  "\nTo know more about it - https://www.healthlinkbc.ca/healthy-eating-physical-activity/being-active/health-benefits-physical-activity/muscular-strength"
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Muscular Endurance Training Health Benefits'
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


