import 'dart:ui';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'Lend.dart';
import 'Borrow.dart';

class Money extends StatelessWidget {
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
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Money',
                style: TextStyle(color: Color(0xff12ACB1), fontSize: 36.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Row(children: [
                  Text(
                    'This week',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.expand_more)
                ]),
              ),
              Container(
                  height: 163,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Borrow();
                                  }));
                                },
                                child: Container(
                                  height: 100,
                                  child: SvgPicture.asset(
                                      'assets/images/Group 573.svg',
                                      fit: BoxFit.contain),
                                )),
                          ),
                          SizedBox(height: 2.0),
                          Text('Borrowed',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          SizedBox(height: 2.0),
                          Text('\₹1503',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF05E896)))
                        ]),
                        Column(children: [
                          GestureDetector(
                            onTap: () {},
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Lend();
                                }));
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 30),
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  child: Container(
                                    height: 100,
                                    child: SvgPicture.asset(
                                      'assets/images/Group 574.svg',
                                      fit: BoxFit.contain,
                                    ),
                                    // child: Center(
                                    //   child: Text(
                                    //     'Events',
                                    //     style: TextStyle(
                                    //         color: Colors.white, fontSize: 25.0),
                                    //   ),
                                    // ),
                                  )),
                            ),
                          ),
                          SizedBox(height: 2.0),
                          Text('Lent',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          SizedBox(height: 2.0),
                          Text('\₹1503',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFFF8787)))
                        ])
                      ])),
              Divider(
                height: 40,
                thickness: 2,
              ),
              Container(
                child: Text(
                  'Reminders',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff12ACB1),
                      fontSize: 20.0),
                ),
              ),
              //  Container(child: Text('Reminder', style:
              // TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Given To',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Suraj',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '16-04-20',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ]),
                    Spacer(),
                    Text(
                      '\₹150',
                      style:
                          TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                    ),
                    Spacer(),
                    Container(height:22,child:ButtonTheme(
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
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Taken From',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sasha',
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            '16-04-20',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.grey),
                          ),
                        ]),
                    Spacer(),
                    Text(
                      '\₹150',
                      style:
                          TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                    ),
                    Spacer(),
                    Container(height:22,child:ButtonTheme(
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
                    ),),
                  ],
                ),
              ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Given To',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text(
                    'Suraj',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\₹150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  'Taken From',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),

              Row(
                children: [
                  Text(
                    'Sasha',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\₹150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
