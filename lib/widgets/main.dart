
import 'package:fitness_app/widgets/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Signup.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class Myfirstapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/9.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft),
          ),
          // we will give this media query height
          // double.infinity would make it big as allowed
          // while the MediaQuery make it big as a screen

          width: double.infinity,
          height:MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment:  CrossAxisAlignment.center,
            children: <Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    ' WORKOUT \t BUDDY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'An app where you can be physical strong',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height:10),
                      Text("motivated and pump up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'This will help you get in shape and to be fit',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children:<Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    //defining the shape
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: Text(
                      'Log-In',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Creating a Signup Button
                  SizedBox(height: 20.0),
                  MaterialButton(
                    minWidth:double.infinity,
                    height: 60.0,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),

                    ),
                    child: Text(
                      'Sign-Up',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}