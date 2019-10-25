import 'package:flutter/material.dart';
import 'LoginPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void navigateToNext() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: navigateToNext,
              child: Hero(
                tag: "insta",
                child: Image(image: AssetImage("images/music.png"),
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
