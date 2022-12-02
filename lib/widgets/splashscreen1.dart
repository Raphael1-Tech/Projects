import 'package:fitness_app/widgets/home_screen.dart';
import 'package:fitness_app/widgets/main.dart';
import 'package:flutter/material.dart';
// import 'package:hope/calculator.dart';
import 'Login.dart';

class splashscreen1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:  Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text("Welcome to Workout \t Buddy!",
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text("This app will help you to be physically healthy and fit",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.w300,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20,),
            Text("Time for you to be buffed up",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.w300,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/11.jpg")
                ),
              ),
            ),
            SizedBox(height: 20,),

            Column(
              children: <Widget>[
                // the login button
                MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.lightGreenAccent,
                  height: 60.0,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Myfirstapp()));
                  },
                  //defining the shape
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                    ),
                    borderRadius: BorderRadius.circular(50.0),

                  ),
                  child: Text(
                    'Lets start now!',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}