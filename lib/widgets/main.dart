
import 'package:fitness_app/widgets/SplashScreen.dart';
import 'package:fitness_app/widgets/onboard.dart';
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
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: <Widget> [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Time to Register',
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
                          'YOU BUILT DIFFERENT\nYour Stronger\nYour Faster\nYour Better',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height:30),
                      Text("NO PAIN!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'NO GAIN!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.red,
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
