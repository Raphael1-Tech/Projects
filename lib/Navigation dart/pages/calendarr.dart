import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../widgets/home_screen.dart';

class Calendar extends StatefulWidget {


  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;
  TextStyle daystyle(FontWeight fontWeight)
  {
    return TextStyle(color: Color(0xff30384c), fontWeight: fontWeight);
  }
  Container tasklist (String title, String description, IconData iconImg, Color iconColor)
  {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children:<Widget> [
          Icon(iconImg,
            color: iconColor,
            size: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: MediaQuery.of(context).size.width*0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Text(title, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                SizedBox(height: 10,),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color:Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  @override
  void initState()
  {
    super.initState();
    _controller = CalendarController();
  }
  @override
  void dispose()
  {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              TableCalendar(startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(
                weekdayStyle: daystyle(FontWeight.normal),
                weekendStyle: daystyle(FontWeight.normal),
                selectedColor: Color(0xff30374b),
                todayColor: Color(0xff30374b)
              ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: Color(0xff30384c),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  weekendStyle: TextStyle(
                    color: Color(0xff30384c),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleTextStyle: TextStyle(
                    color: Color(0xff30384c),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: Color(0xff30384c),
                  )
                ) ,
                calendarController: _controller,
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                  color: Color(0xff30384c)
                ),
                child: Stack(
                  children:<Widget> [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Padding(padding: EdgeInsets.only(top:50),
                          child: Text("My Monthly Schedule Routine", style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        tasklist("Task #1","Nice Job Buddy! That is how you work on your Lower Body and Leg area.",Icons.check_circle, Color(0xff00cf8d)),
                        tasklist("Task #2","Hey Buddy! Time to work on your Chest.",Icons.lock_clock, Color(0xffff9e00)),
                        tasklist("Task #3","Hey there Buddy! Your Getting sloppy, time for your abs training",Icons.lock_clock, Color(0xffff9e00)),
                        tasklist("Task #4","Hey Buddy your doing great keep it up your back and shoulder was heating up.",Icons.check_circle, Color(0xff00cf8d)),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Color(0xff30384c).withOpacity(0),
                              Color(0xff30384c)
                            ],
                            stops: [
                              0.0,
                              1.0
                            ]
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all((20)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.grey,
                          boxShadow: [BoxShadow(
                            color: Colors.black54,
                            blurRadius: 30,
                          )]
                        ),
                        child: Text('+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
