import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatefulWidget {
  @override
  _BarChartSampleState createState() => _BarChartSampleState();
}

class _BarChartSampleState extends State<BarChartSample> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 25,
          minY: 5,
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (val) => const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                margin: 20,
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return 'ENDURANCE';
                    case 1:
                      return 'AGILITY';
                    case 2:
                      return 'FLEXIBILITY';
                    case 3:
                      return 'BALANCE';
                    case 4:
                      return 'COORDINATION';
                    default:
                      return '';
                  }
                }),
          ),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(y: 13, colors: [
                  Color(0xffFF5252),
                  Color(0xffFF5252),
                ]),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(y: 15, colors: [
                  Color(0xfff8b250),
                  Color(0xfff8b250),
                ]),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 2,
              barRods: [
                BarChartRodData(y: 8, colors: [
                  Color(0xff845bef),
                  Color(0xff845bef),
                ]),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 3,
              barRods: [
                BarChartRodData(y: 7, colors: [
                  Color(0xff13d38e),
                  Color(0xff13d38e),
                ]),
              ],
              showingTooltipIndicators: [0],
            ),
            BarChartGroupData(
              x: 4,
              barRods: [
                BarChartRodData(y: 10, colors: [
                  Color(0xff0293ee),
                  Color(0xff0293ee),
                ]),
              ],
              showingTooltipIndicators: [0],
            ),
          ]),
    );
  }
}
