import 'package:fitness_app/Login.dart';
import 'package:fitness_app/Navigation%20dart/pages/my%20account.dart';
import 'package:fitness_app/Navigation%20dart/pages/people.dart';
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
              SizedBox(height: 30,),
              DrawerItem(
                  name: 'Settings',
                  icon: Icons.settings,
                  onPressed: ()=> onItemPressed(context, index: 2)
              ),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: ()=> onItemPressed(context, index: 3)
              ),
              SizedBox(height: 30,),

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
        Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
        break;
      case 3:
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
          backgroundImage: NetworkImage('https://scontent.fcrk3-1.fna.fbcdn.net/v/t39.30808-6/278740214_2870892956388991_8840972835145742749_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGjwNUHA_pNvE_lgc5XQQ1x8hj0f1rFQrPyGPR_WsVCs2xUAP31Iexu5RiffRCAe1CMHulw8OdNaQgR2ev7Rsp2&_nc_ohc=5CK_iIa9Ti4AX_BIjyl&_nc_ht=scontent.fcrk3-1.fna&oh=00_AT84HY3CmQuRrd0M20auhaPLIohxbl_GlzmrTuyMUmI2jw&oe=635E9A8D'),
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



