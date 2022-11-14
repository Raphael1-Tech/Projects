import 'package:flutter/material.dart';

import 'BarChartSample.dart';
import 'LineChartSample.dart';
import 'PieChartSample.dart';


class Graphs extends StatefulWidget {
  @override
  _GraphsState createState() => _GraphsState();
}

class _GraphsState extends State<Graphs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'My Progress Graph',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Listed Work-outs',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20,),
          PieChartSample(),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Number of Hours Exercise per Categories',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 20),
            child: BarChartSample(),
          ),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Number of Exercise Rendered (Monthly)',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LineChartSample(),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
