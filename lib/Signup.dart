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