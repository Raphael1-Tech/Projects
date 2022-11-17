import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'PieIndicator.dart';
class PieChartSample extends StatefulWidget {
  @override
  _PieChartSampleState createState() => _PieChartSampleState();
}

class _PieChartSampleState extends State<PieChartSample> {
  int _clickedIndex;

  List<PieChartSectionData> buildPieChartSections() {
    return List.generate(5, (index) {
      final bool isClicked = index == _clickedIndex;
      final double fontSize = isClicked ? 35 : 20;
      final double radius = isClicked ? 120 : 100;

      switch (index) {
        case 0:
          return PieChartSectionData(
            color: Color(0xff0293ee),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xfff8b250),
            value: 22,
            title: '22%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xff845bef),
            value: 8,
            title: '8%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: Color(0xffFF9800),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        default:
          return null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(200),
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(touchCallback: (touchResponse) {
                setState(() {
                  if (touchResponse.touchInput is FlLongPressEnd ||
                      touchResponse.touchInput is FlPanEnd) {
                    _clickedIndex = -1;
                  } else {
                    _clickedIndex = touchResponse.touchedSectionIndex;
                  }
                });
              }),
              borderData: FlBorderData(show: true),
              sectionsSpace: 0,
              centerSpaceRadius: 0,
              sections: buildPieChartSections(),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PieIndicator(
              color: Color(0xff0293ee),
              text: 'ABS TRAINING',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xfff8b250),
              text: 'CHEST TRAINING',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xff845bef),
              text: 'ARM TRAINING',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xff13d38e),
              text: 'LEG TRAINING',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xffFF9800),
              text: 'SHOULDER AND BACK TRAINING',
            ),
            SizedBox(height: 5),
          ],
        )
      ],
    );
  }
}
