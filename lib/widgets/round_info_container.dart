import 'package:flutter/material.dart';

class RoundInfoContainer extends StatelessWidget {
  const RoundInfoContainer({Key key, this.title, this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.lightGreenAccent, fontSize: 18.0),
          ),
          Text(
            subtitle,
            style: TextStyle(color: Colors.lightGreenAccent, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
