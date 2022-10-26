import 'package:fitness_app/screens/Coordination.dart';
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


void main() => runApp(Prog3());

class Prog3 extends StatelessWidget {
  final String title = 'Coordination Training Progress Checklist';

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
  final allowNotifications = NotificationSetting(title: "Coordination Training Complete");

  final notifications = [
    NotificationSetting(title: 'Drill #1. Standing Quad Stretch'),
    NotificationSetting(title: 'Drill #2. Standing Side Stretch'),
    NotificationSetting(title: 'Drill #3. Seated Hamstring Stretch'),
    NotificationSetting(title: 'Drill #4. Standing Calf Stretch'),
    NotificationSetting(title: 'Drill #5. Shoulder Stretch'),
    NotificationSetting(title: 'Drill #6. The Forward Hang'),
    NotificationSetting(title: 'Drill #7. Back stretch'),
    NotificationSetting(title: 'Drill #8. Butterfly Groin Stretch'),
    NotificationSetting(title:  'Drill #9. Split Squat'),
    NotificationSetting(title: 'Drill #10. Modified Cobra'),

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
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Coordination()))
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