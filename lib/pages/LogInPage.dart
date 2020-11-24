import 'package:flutter/material.dart';
import 'package:yibe_final_ui/services/auth.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String error = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 125.0, 0.0, 0.0),
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              fontSize: 70.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 125.0, 0.0, 0.0),
                        child: Text(
                          '.',
                          style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff12ACB1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                            decoration: InputDecoration(
                                labelText: 'E-mail',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                // hintText: 'EMAIL',
                                // hintStyle: ,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color(0xff12ACB1),
                                ))),
                            validator: (val) => val.isEmpty ? 'Email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            }),
                        SizedBox(height: 10.0),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff12ACB1),
                              ))),
                          obscureText: true,
                          validator: (val) =>
                              val.length < 0 ? 'Enter a password' : null,
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                        SizedBox(height: 50.0),
                        GestureDetector(
                          onTap: () async {
                            if (_formKey.currentState.validate()) {
                              dynamic result =
                                  await _auth.signIn(email, password);
                              if (result == null) {
                                setState(() {
                                  error = 'Invalid Credintials';
                                });
                              }
                            }
                          },
                          child: Container(
                              height: 40.0,
                              child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Color(0xff12ACB1),
                                elevation: 0.0,
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Center(
                                child: Text('Go Back',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ]),
        ));
  }
}
