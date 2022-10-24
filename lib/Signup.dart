import 'package:flutter/material.dart';


import 'Login.dart';

class SignUpPage extends StatefulWidget {


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isHiddenPassword1 = false;
  bool isPasswordCharacter = false;
  bool hasPasswordOneNumber = false;

  onPasswordChange(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      isPasswordCharacter = false;
      if (password.length >= 8)
        isPasswordCharacter = true;

      hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password))
        hasPasswordOneNumber= true;

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
            Navigator.pop(context);
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
                'assets/images/workout.jpg'),
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
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email/Phone Number",
                      hintStyle: TextStyle(
                          color: Colors.white
                      ),
                    ) ,
                  ),
                  TextField(
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
                      )
                  ) ,
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: isPasswordCharacter ? Colors.lightGreenAccent:Colors.transparent,
                            border: isPasswordCharacter ?  Border.all(color: Colors.transparent):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Contains at least 8 characters")
                    ],
                  ),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: hasPasswordOneNumber ? Colors.lightGreenAccent:Colors.transparent,
                            border: hasPasswordOneNumber ?  Border.all(color: Colors.transparent):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Contains at least 1 number")
                    ],
                  ),
                  TextField(
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
                      )
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: isPasswordCharacter ? Colors.lightGreenAccent:Colors.transparent,
                            border: isPasswordCharacter ?  Border.all(color: Colors.transparent):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Contains at least 8 characters")
                    ],
                  ),
                  Row(
                    children: [
                      AnimatedContainer(duration: Duration(milliseconds: 500),
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: hasPasswordOneNumber ? Colors.lightGreenAccent:Colors.transparent,
                            border: hasPasswordOneNumber ?  Border.all(color: Colors.transparent):
                            Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      Text("Contains at least 1 number")
                    ],
                  ),
                ],
              ),
              Container(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.grey,
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
                      color: Colors.white,
                    ),
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