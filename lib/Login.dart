import 'package:fitness_app/Signup.dart';
import 'package:fitness_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: Colors.greenAccent,
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
                      'HELLO!!! YOUR HERE NOW',
                      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300),selectionColor: Colors.lightGreenAccent,
                    ),
                    SizedBox(height: 10,),
                    Text("YOU JUST NEED TO ENTER HER!",
                      style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.redAccent),)
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children:<Widget> [
                      inputFile(label: 'Email Address'),
                      inputFile(label: 'Password', obscureText: true)
                    ],
                  ),
                ),
                Padding(padding:
                EdgeInsets.symmetric(horizontal: 40.0),
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
                    decoration:
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )

                    ),
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
                    Text("Don't have an account yet?"),
                      GestureDetector(onTap: () =>  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      )),
                      child: Text(" Sign-Up", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),),
                    )
                  ],
                ),
                SizedBox(height: 10,
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
      SizedBox(height: 10,)
    ],
  );
}
