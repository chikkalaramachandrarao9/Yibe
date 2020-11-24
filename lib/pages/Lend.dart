import 'package:flutter/material.dart';

class Lend extends StatelessWidget {
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
            title: Text(
              "Lend",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: SingleChildScrollView(child:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  //   color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/qr_code.png')),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                child: Text(
                  'Reminder',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff12ACB1),
                      fontSize: 20.0),
                ),
              ),
              //  Container(child: Text('Reminder', style:
              // TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),),),
              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text(
                    'Suraj',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\$150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  ButtonTheme(
                    height: 16.0,
                    child: OutlineButton(
                        shape: StadiumBorder(),
                        borderSide: BorderSide(color: Color(0xff12ACB1)),
                        onPressed: () {},
                        child: Text(
                          'Settle',
                          style: TextStyle(
                              color: Color(0xff12ACB1), fontSize: 16.0),
                        )),
                  ),
                ],),
              
              Row(
                children: [
                  Text(
                    'Sasha',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\$150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  ButtonTheme(
                    height: 16.0,
                    child: OutlineButton(
                        shape: StadiumBorder(),
                        borderSide: BorderSide(color: Color(0xff12ACB1)),
                        onPressed: () {},
                        child: Text(
                          'Settle',
                          style: TextStyle(
                              color: Color(0xff12ACB1), fontSize: 16.0),
                        )),
                  ),
                ],),
              
              Divider(height: 40, thickness: 2),
              Container(
                child: Text(
                  'History',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff12ACB1),
                      fontSize: 20.0),
                ),
              ),
              //  Container(child: Text('Reminder', style:
              // TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),),),
              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(padding:EdgeInsets.symmetric(vertical:8),child:Row(
                children: [
                  Text(
                    'Suraj',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\$150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              ),
              Padding(padding:EdgeInsets.symmetric(vertical:8),child:Row(
                children: [
                  Text(
                    'Sasha',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\$150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),),
            ],
          ),),
        ));
  }
}
