import 'package:fitness_app/screens/Balance.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class NotificationSetting {
  String title;
  bool value;

  NotificationSetting({
    @required this.title,
    this.value = false,
  });
}


void main() => runApp(Prog2());

class Prog2 extends StatelessWidget {
  final String title = ' Balance Training Progress Checklist';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.grey),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final allowNotifications = NotificationSetting(title: 'Balance training Complete');

  final notifications = [
    NotificationSetting(title:'Drill #1. Tightrope Walk'),
    NotificationSetting(title:'Drill #2. Rock the Boat'),
    NotificationSetting(title:'Drill #3. Flamingo Stand'),
    NotificationSetting(title:'Drill #4. Banded triplanar toe taps'),
    NotificationSetting(title:'Drill #5. Single leg cross-body punches'),
    NotificationSetting(title:'Drill #6. Chair leg raises'),
    NotificationSetting(title:'Drill #7. Paloff press with rotation'),
    NotificationSetting(title:'Drill #8. Heel toe Walking'),
    NotificationSetting(title:'Drill #9. Tree Pose'),
    NotificationSetting(title:'Drill #10. Marching'),

  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: ListView(
      children: [
        IconButton(
          icon: Icon(Icons.chevron_left),
          iconSize: 30,
          color: Colors.white,
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Balance()))
        ),
        buildToggleCheckbox(allowNotifications),
        Divider(),
        ...notifications.map(buildSingleCheckbox).toList(),
      ],
    ),
  );

  Widget buildToggleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;

        setState(() {
          allowNotifications.value = newValue;
          notifications.forEach((notification) {
            notification.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
    notification: notification,
    onClicked: () {
      setState(() {
        final newValue = !notification.value;
        notification.value = newValue;

        if (!newValue) {
          allowNotifications.value = false;
        } else {
          final allow =
          notifications.every((notification) => notification.value);
          allowNotifications.value = allow;
        }
      });
    },
  );

  Widget buildCheckbox({
    @required NotificationSetting notification,
    @required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,
          onChanged: (value) => onClicked(),
        ),
        title: Text(
          notification.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
}