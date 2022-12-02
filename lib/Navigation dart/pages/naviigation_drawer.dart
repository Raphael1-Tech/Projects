
import 'package:fitness_app/Navigation%20dart/pages/calendarr.dart';
import 'package:fitness_app/Progress%20graph/HomeScreen.dart';
import 'package:fitness_app/bmi%20offsets/calculator.dart';
import 'package:fitness_app/Navigation%20dart/pages/my%20account.dart';
import 'package:fitness_app/Navigation%20dart/pages/settings.dart';
import 'package:fitness_app/widgets/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';



class NavigationDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: Colors.transparent,),

              DrawerItem(
                  name: 'My Account',
                  icon: Icons.account_box_rounded,
                  onPressed: ()=> onItemPressed(context, index: 1)
              ),
              Divider(),
              DrawerItem(
                  name: 'My Calendar Training',
                  icon: Icons.calendar_month,
                  onPressed: ()=> onItemPressed(context, index: 2)
              ),
              DrawerItem(
                  name: 'To know my BMI',
                  icon: Icons.calculate_rounded,
                  onPressed: ()=> onItemPressed(context, index: 3)
              ),
              DrawerItem(
                  name: 'Progress Graph',
                  icon: Icons.auto_graph_sharp,
                  onPressed: ()=> onItemPressed(context, index: 4)
              ),
              SizedBox(height: 30,),
              Divider(),
              DrawerItem(
                  name: 'Settings',
                  icon: Icons.settings,
                  onPressed: ()=> onItemPressed(context, index: 5)
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: ()=> onItemPressed(context, index: 6)
              ),
              SizedBox(height: 30,),
              Divider(),
              DrawerItem(
                  name: "Under Construction",
                  icon: Icons.file_download_off,
                  onPressed: ()=> onItemPressed(context, index: 7)
              ),
              DrawerItem(
                  name: "The Gym Shack",
                  onPressed: ()=> onItemPressed(context, index: 8)
              ),
              DrawerItem(
                  name: "My Gym Buddy",
                  onPressed: ()=> onItemPressed(context, index: 9)
              ),

            ],
          ),
        ),
      ),
    );
  }
  void onItemPressed(BuildContext context, { int index}){
    Navigator.pop(context);

    switch(index){
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsUI()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Calendar()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => BMI()));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Graphs()));
        break;
      case 5:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
        break;
      case 6:
        Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
        break;

    }
  }

  Widget headerWidget() {
;
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/images/raprap.jpg'),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Raphael Alamag', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('raphael@gmail.com', style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );

  }
}



