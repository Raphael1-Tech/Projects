import 'package:flutter/material.dart';


import 'Login.dart';

class SignUpPage extends StatefulWidget {


  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHiddenPassword1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.grey,
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
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Column(
                children:<Widget> [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Username"
                    ) ,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email/Phone Number"
                    ) ,
                  ),
                  TextField(
                      obscureText: isHiddenPassword1,
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView1,
                          child: Icon(
                            Icons.visibility,
                          ),
                        ),
                      )
                  ) ,
                  TextField(
                      obscureText: isHiddenPassword1,
                      decoration: InputDecoration(
                        hintText: " Confirm Password",
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView1,
                          child: Icon(
                            Icons.visibility,
                          ),
                        ),
                      )
                  ) ,
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
                  Text('Already have an account?'),

                  GestureDetector(
                    onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    )),
                    child: Text("Log-In",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
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