import 'dart:ui';

import 'ArchivesPage.dart';
import 'Resume.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Passes.dart';
import 'GrowthHistory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Preferences extends StatefulWidget {
  //  static final routeName = "/Preferences";

  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  bool _isAnyone = true;
  Color green = Color(0xFF0CB5BB);
  Color blue = Color(0xFF424283);
  int _currentIndex = 1;
  List<String> cardList = [
    'assets/images/pass1.png',
    'assets/images/pass2.png',
    'assets/images/pass3.png'
  ];
  List cardList1 = [Item4(), Item5(), Item6()];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(46.0),
          child: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Preferences',
                style: TextStyle(color: Color(0xff12ACB1), fontSize: 36.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              buildSwitchActionRow('Enable Yibe Stats', true),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Resume()));
                },
                child: barButtonOutline('Access Resume'),
              ),
              Divider(
                height: 40,
                thickness: 2,
              ),
              Text(
                'Events',
                style: TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  initialPage: 1,
                  height: 180.0,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            image: DecorationImage(
                                image: AssetImage(
                                  card,
                                ),
                                fit: BoxFit.fill)),
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        // child: Card(
                        //   color: Colors.white,
                        //   child: card,
                        // ),
                      ),
                    );
                  });
                }).toList(),
              ),
              SizedBox(height: 12.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Passes()));
                },
                child: barButtonOutline('View Event Passes'),
              ),
              Divider(
                height: 40,
                thickness: 2,
              ),
              Text(
                'Growth+',
                style: TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              buildSwitchActionRow('Internships', true),
              buildSwitchActionRow('QuickFixes', true),
              buildSwitchActionRow('Co-Found/StartUps', true),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GrowthHistory()));
                },
                child: barButtonOutline('Growth+ History'),
              ),
              Divider(
                height: 40,
                thickness: 2,
              ),
              Text(
                'Activities',
                style: TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                'Get Notified by:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: green,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                //width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAnyone = !_isAnyone;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isAnyone ? green : Colors.white,
                            border: Border.all(
                                color: _isAnyone ? green : Colors.white,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Anyone",
                          style: TextStyle(
                              color: _isAnyone ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAnyone = !_isAnyone;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isAnyone ? Colors.white : green,
                            border: Border.all(
                                color: _isAnyone ? Colors.white : green,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Incircle",
                          style: TextStyle(
                              color: _isAnyone ? Colors.grey : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              buildSwitchActionRow('Willing to teach', false),
              Row(children: [
                Spacer(),
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: green,
                    ),
                    width: 140.0,
                    height: 30.0,
                    child: Center(
                      child: Text(
                        'Learn List',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Archives()));
                },
                child: barButtonOutline('View Activities Archives'),
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                height: 40,
                thickness: 2,
              ),
              Text(
                'Money',
                style: TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),
              ),

              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      'Borrow',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
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

              Row(
                children: [
                  Container(
                    width: 150,
                    child: Text(
                      'Lent',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Text(
                    '\₹150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  Divider(
                    height: 40,
                    thickness: 2,
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0), //company logo here
                  title: Text('Company name'),
                  subtitle: Container(
                    height: 100,
                    child: Text(
                        'jojo tim tim tim tim tim tim tim tim tim tim tim tim tim tim'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container barButtonOutline(String title) {
    return Container(
        padding: EdgeInsets.only(top: 2, bottom: 2),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xff12ACB1),
            ),
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff12ACB1),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )));
  }

  Row buildSwitchActionRow(String title, bool isActive) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: TextStyle(fontSize: 16.0),
      ),
      Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: Color(0xff12ACB1),
            value: isActive,
            onChanged: (bool val) {
              setState(() {
                isActive = val;
              });
            },
          ))
    ]);
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/hustle1.svg',
            height: 180.0,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/Hustle2.svg',
            height: 180.0,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}

class Item6 extends StatelessWidget {
  const Item6({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/hustle3.svg',
            height: 180.0,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
