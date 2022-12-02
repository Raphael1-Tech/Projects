import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String name;
  final IconData icon;
  final Function() onPressed;
   DrawerItem({this.name, this.icon,this.onPressed}) ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.lightGreenAccent,),
            const SizedBox(width: 40,),
            Text(name, style: const TextStyle(fontSize: 20, color: Colors.lightGreen),)
          ],
        ),
      ),
    );
  }
}
