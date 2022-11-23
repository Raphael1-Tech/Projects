
import 'package:fitness_app/widgets/main.dart';
import 'package:fitness_app/widgets/home_screen.dart';
import 'package:fitness_app/widgets/onboard.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'Signup.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  final _formKey = GlobalKey<FormState>();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 8) {
      return "Password should be at last 6 characters";
    } else if (value.length < 15) {
      return "Password should be at last 15 characters";
    } else
      return null;
  }

  final TextEditingController _controller = TextEditingController();
  bool isHiddenPassword = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordNumber = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Myfirstapp()));
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/20.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft),
          ),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                    Column(
                      children:<Widget> [
                        Text(
                          "Time To Be Fit",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Just put your information here!",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                          children:<Widget> [
                            TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintText: "Username", hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                              ),
                              style: TextStyle(color: Colors.white),
                              validator:EmailValidator(errorText: "Enter valid email id"),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              onChanged: (password) => onPasswordChanged(password),
                              obscureText: isHiddenPassword,
                              decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(
                                      Icons.visibility,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Colors.black)
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
                              ),
                              style: TextStyle(color: Colors.white),
                              validator:EmailValidator(errorText: "Enter secure password"),
                            ),
                            SizedBox(height: 20),

                            Row(
                            children: [
                              AnimatedContainer(duration: Duration(milliseconds: 500),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                ),
                              ),
                              SizedBox(height: 10,),
                            ],
                            ),
                            Row(
                              children: [
                                AnimatedContainer(duration: Duration(milliseconds: 500),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    Padding(padding:
                    EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        decoration:
                        BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border(
                              bottom:BorderSide(color: Colors.transparent),
                              top:BorderSide(color: Colors.transparent),
                              right:BorderSide(color: Colors.transparent),
                              left:BorderSide(color: Colors.transparent),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Container(
                        padding: EdgeInsets.only(top: 30.0, left:3.0),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60.0,
                          onPressed: (){},
                          color: Colors.white,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),

                          ),
                          child:
                          GestureDetector(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          )),
                            child: Text(
                              'Log-in Here',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  )),
                    child: Text(" Sign-Up", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }


  void _togglePasswordView() {
    // if (isHiddenPassword==true) {
    //   isHiddenPassword=false;
    // } else {
    //   isHiddenPassword=true;
    // }
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
  setState(() {
    _isPasswordEightCharacters = false;
    if(password.length >=8)
      _isPasswordEightCharacters = true;

    _hasPasswordNumber = false;
    if(numericRegex.hasMatch(password))
      _hasPasswordNumber = true;

  });}
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.visibility,
    );
  }
}
//We will be creating a widget for a text fields
Widget inputFile({label,obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget> [
      Text(
        label,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
            color: Colors.greenAccent
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.black54
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide( color: Colors.black87)
            )
        ),
      ),
    ],
  );
}
