import 'package:fitness_app/Signup.dart';
import 'package:fitness_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();
  bool isHiddenPassword = false;
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20.0,
          color: Colors.white,
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/run.jpg'),
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
                          'Do you want to pump up?',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.red,
                          ),
                        ),
                        Text("Just put your information here!")
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                          children:<Widget> [
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Username"
                              ) ,
                            ),
                            TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                  hintText: "Email/Phone Number",
                              ) ,
                            ),
                            TextField(
                              onChanged: (password) => onPasswordChange(password),
                                obscureText: isHiddenPassword,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: InkWell(
                                    onTap: _togglePasswordView,
                                    child: Icon(
                                      Icons.visibility,
                                    ),
                                  ),
                                )
                            ),

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
                          color: Colors.black,
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
                                color: Colors.white,
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
                      color: Colors.red,
                    ),
                  ),
                  GestureDetector(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  )),
                    child: Text(" Sign-Up", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.red,
                    ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 100),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/hello.png'),
                      fit: BoxFit.fitHeight

                  ),
                ),
              )
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
