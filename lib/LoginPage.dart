import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_me/SignupPage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isPasswordvisible = false;

  void setPasswordVisibility() {
    setState(() {
      _isPasswordvisible = _isPasswordvisible ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Hero(
                    tag: "insta",
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 0.0),
                      child: Image(image: AssetImage("images/music.png"),
                        width: 60.0,
                        height: 60.0,
                      ),
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
                        child: Text("Welcome back,",
                          style: TextStyle(fontSize: 22.0, fontFamily: "Poppins"),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Text("Please login to continue",
                          style: TextStyle(fontSize: 16.0, fontFamily: "Poppins", color: Colors.grey),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  40.0, 20.0, 20.0),
                    child: TextField(
                      style: TextStyle(fontSize: 15.0, fontFamily: "Poppins"),
                      decoration: InputDecoration(
                          labelText: "Phone or Email",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  0.0, 20.0, 20.0),
                    child: TextField(
                      style: TextStyle(fontSize: 15.0, fontFamily: "Poppins"),
                      obscureText: !_isPasswordvisible,
                      decoration: InputDecoration(
                          labelText: "Your Password",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                        child: GestureDetector(
                          onTap: () {
                            setPasswordVisibility();
                          },
                          child: Text(_isPasswordvisible ? "Hide Password" : "Show Password",
                            style: TextStyle(fontSize: 14.0, fontFamily: "Poppins", color: Colors.redAccent),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  20.0, 20.0, 20.0),
                    child: ButtonTheme(
                      height: 50.0,
                      minWidth: MediaQuery.of(context).size.width,
                      child: RaisedButton(child: Text("Login", style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 16.0), ),
                        splashColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  20.0, 20.0, 20.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14.0, color: Colors.grey),
                        children: [
                          TextSpan(text: "Don't have an accout?  ", ),
                          TextSpan(text: "Signup",style: TextStyle(
                              color: Colors.red, fontFamily: "Poppins", fontSize: 14.0
                          ))
                        ]
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
