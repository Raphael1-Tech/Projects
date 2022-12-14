import 'package:fitness_app/widgets/main.dart';
import 'package:flutter/material.dart';

import 'Login.dart';




class SignUpPage extends StatefulWidget {


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHiddenPassword1 = false;
  bool _isPasswordEightCharacter = false;
  bool _hasPasswordOneNumber = false;


  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    setState(() {
      _isPasswordEightCharacter = false;
      if(password.length >= 8)
        _isPasswordEightCharacter = true;

      _hasPasswordOneNumber = false;
      if(numericRegex.hasMatch(password))
        _hasPasswordOneNumber = true;

      _isPasswordEightCharacter = false;
      if(password.length >= 8)
        _isPasswordEightCharacter = true;

      _hasPasswordOneNumber = false;
      if(numericRegex.hasMatch(password))
        _hasPasswordOneNumber = true;



    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Myfirstapp()));
          },
          icon: Icon(Icons.arrow_back,
            size: 20,
            color: Colors.white,),


        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/12.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft
            )
          ),
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
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    "Sign Up Here, it's easy here",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children:<Widget> [
                  TextField(
                    decoration: InputDecoration(
                    hintText: "Username",
                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                    ) ,
                    style: TextStyle(color: Colors.white),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email/Phone Number",
                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                    ) ,
                    style: TextStyle(color: Colors.white),
                  ),
                  TextField(
                    onChanged: (password) => onPasswordChanged(password),
                      obscureText: isHiddenPassword1,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.white
                        ),
                        fillColor: Colors.white,
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView1,
                          child: Icon(
                            Icons.visibility,
                          ),
                        ),
                      ),
                    style: TextStyle(color: Colors.white),
                  ) ,
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: _isPasswordEightCharacter ? Colors.green: Colors.transparent,
                          border: _isPasswordEightCharacter ? Border.all(color: Colors.transparent):
                              Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                      ),
                      SizedBox(height: 10,),
                      Text("Contains at least 8 Characters",
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: _hasPasswordOneNumber ? Colors.green: Colors.transparent,
                            border: _hasPasswordOneNumber ? Border.all(color: Colors.grey.shade400):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                      ),
                      SizedBox(height: 10,),
                      Text("Contains at least 1 number",
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                    ],
                  ),
                  TextField(
                    onChanged: (password) => onPasswordChanged(password),
                      obscureText: isHiddenPassword1,
                      decoration: InputDecoration(
                        hintText: " Confirm Password",
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        fillColor: Colors.white,
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView1,
                          child: Icon(
                            Icons.visibility,
                          ),
                        ),
                      ),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: _isPasswordEightCharacter ? Colors.green: Colors.transparent,
                            border: _isPasswordEightCharacter ? Border.all(color: Colors.grey.shade400):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                      ),
                      SizedBox(height: 10,),
                      Text("Contains at least 8 Characters",
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: _hasPasswordOneNumber ? Colors.green: Colors.transparent,
                            border: _hasPasswordOneNumber ? Border.all(color: Colors.grey.shade400):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Icon(Icons.check, color: Colors.white, size: 15,),),
                      ),
                      SizedBox(height: 10,),
                      Text("Contains at least 1 number",
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                    ],
                  ),
              Container(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.lightGreen,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: GestureDetector(
                    onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                    child: Text(
                      "Sign up", style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Text('Already have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white,
                    )
                  ),
                  SizedBox(width: 10,
                  ),
                  GestureDetector(
                    onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                    child: Text("Log-In",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.lightGreenAccent,
                    ),
                    ),
                  )
                ],
              )
            ],
          ),
        ])),
      ),
    );
  }

  void _togglePasswordView1() {
    // if (isHiddenPassword==true) {
    //   isHiddenPassword=false;
    // } else {
    //   isHiddenPassword=true;
    // }
    setState(() {
      isHiddenPassword1 = !isHiddenPassword1;
    });
  }
}