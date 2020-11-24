import 'package:flutter/material.dart';
import '../widget/custom_dialog_box.dart';
import 'LogInPage.dart';
import 'SignUpPage.dart';


class FirstView extends StatelessWidget {
  final primaryColor = const Color(0xff12ACB1);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: primaryColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.10),
                Text(
                  "Yibe Network",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(height: _height * 0.10),
                Text(
                  "Begin your Yibe lifestyle",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: _height * 0.15),
                RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                    child: Text(
                      "Create new account",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                ),
                SizedBox(height: _height * 0.05),
                FlatButton(
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogInPage()));},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
