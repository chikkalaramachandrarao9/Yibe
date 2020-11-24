import 'package:flutter/material.dart';

class AddSkills extends StatefulWidget {
  @override
  _AddSkillsState createState() => _AddSkillsState();
}

class _AddSkillsState extends State<AddSkills> {
  static const double padding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      //padding: MediaQuery.of(context).viewInsets + const EdgeInsets.symmetric(horizontal: 0.0, vertical: 24.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(padding),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                    offset: const Offset(0.0, 10.0),
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 24.0),
                Text(
                  'Add Skills',
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff12ACB1),
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height: 24.0),
                TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Skill (ex: Graphic Design)'),
                ),
                SizedBox(height: 24.0),
                RaisedButton(
                  color: Color(0xff12ACB1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      'Add Skills',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  child: Text(
                    'Cancel',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff12ACB1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
