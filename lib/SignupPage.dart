import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 80.0, 0.0, 0.0),
                        child: Text("Signup",
                          style: TextStyle(fontSize: 22.0, fontFamily: "Poppins", color: Colors.red),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Text("Please signup to get started",
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
                          labelText: "Name",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  0.0, 20.0, 20.0),
                    child: TextField(
                      style: TextStyle(fontSize: 15.0, fontFamily: "Poppins"),
                      decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  0.0, 20.0, 20.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 15.0, fontFamily: "Poppins"),
                      decoration: InputDecoration(
                          labelText: "Your Password",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  0.0, 20.0, 20.0),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 15.0, fontFamily: "Poppins"),
                      decoration: InputDecoration(
                          labelText: "Confirm Password",
                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,  20.0, 20.0, 20.0),
                    child: ButtonTheme(
                      height: 50.0,
                      minWidth: MediaQuery.of(context).size.width,
                      child: RaisedButton(child: Text("Continue", style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontSize: 16.0), ),
                        splashColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
