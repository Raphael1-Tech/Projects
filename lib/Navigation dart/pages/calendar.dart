import 'package:fitness_app/Navigation%20dart/pages/naviigation_drawer.dart';
import 'package:fitness_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'colorscheme.dart';
class CalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calendarPage(),
      theme: ThemeData(
          fontFamily: 'ubuntu'
      ),
    );
  }
}
class calendarPage extends StatefulWidget {
  @override
  _calendarPageState createState() => _calendarPageState();
}

class _calendarPageState extends State<calendarPage> {
  CalendarController _calendarController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purple,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          ),
        ),
      body: Column(
        children: [
          TableCalendar(
            calendarController: _calendarController,
            initialCalendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            formatAnimation: FormatAnimation.slide,
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
              leftChevronIcon: Icon(
                Icons.arrow_back_ios, color: Colors.white, size: 15,),
              rightChevronIcon: Icon(
                Icons.arrow_forward_ios, color: Colors.white, size: 15,),
              leftChevronMargin: EdgeInsets.only(left: 70),
              rightChevronMargin: EdgeInsets.only(right: 70),
            ),
            calendarStyle: CalendarStyle(
                weekendStyle: TextStyle(
                    color: Colors.white
                ),
                weekdayStyle: TextStyle(
                    color: Colors.white
                )
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: TextStyle(
                    color: Colors.white
                ),
                weekdayStyle: TextStyle(
                    color: Colors.white
                )
            ),
          ),
          SizedBox(height: 5,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xff30384c)
              ),
              child: Stack(
                children: <Widget> [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top:50),
                      child: Text("Today", style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),),
                      Container(
                        padding: EdgeInsets.only(top:20),
                        child: Row(
                          children:<Widget> [
                            Icon(Icons.check_circle,
                              color: Color(0xff00cf8d),
                              size: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width: MediaQuery.of(context).size.width*0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget> [
                                  Text("Task #1",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Hey Buddy! Time to work on your Lower Body and Leg area.",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.white,
                                  ),)
                                ],
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
