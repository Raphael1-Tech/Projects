
import 'package:flutter/material.dart';

import 'Login.dart';
import 'Signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myfirstapp(),
  ));
}

class Myfirstapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('This is an app that can pump you up'),

                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/copy.png'),
                  ),
                ),
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
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Text(
                      'Log-In',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18.0
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
                    color: Colors.lightGreenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    child: Text(
                      'Sign-Up',
                      style: TextStyle(
                        color: Colors.white,
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
