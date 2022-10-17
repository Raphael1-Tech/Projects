import 'package:flutter/material.dart';


import 'Login.dart';

class SignUpPage extends StatefulWidget {


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.lightGreen,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,
            size: 20,
            color: Colors.black,),


        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal:40),
          height: MediaQuery.of(context).size.height- 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              Column(
                children:<Widget> [
                  Text(
                    'Time to Sign-Up!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    "Sign Up Here, it's easy here",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Column(
                children:<Widget> [
                  inputFile(label:'Username'),
                  inputFile(label: 'Email Account/ Phone Number'),
                  inputFile(label: 'Password', obscureText: true),
                  inputFile(label: 'Confirm Password', obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 5, left: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.lightGreenAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Text('Already have an account?'),
                  Text("Log-In",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
