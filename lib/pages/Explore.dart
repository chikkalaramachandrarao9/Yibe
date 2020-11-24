import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(46.0),
        child: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Container(
            //elevation: 0,
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: TextField(
                decoration: new InputDecoration(
              contentPadding: EdgeInsets.all(4),
              hintText: 'Explore...',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            )),
          ),
        ),
      ),
      body: Center(
        child: Text('Explore'),
      ),
    );
  }
}
