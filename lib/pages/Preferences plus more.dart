import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yibe_final_ui/pages/ArchivesPage.dart';
import 'package:yibe_final_ui/pages/Passes.dart';
import 'GrowthHistory.dart';

double screenWidth;
class Preferences extends StatefulWidget {
  //  static final routeName = "/Preferences";
  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  List<String> cardList = [
    'assets/images/poster1.png',
    'assets/images/poster2.png',
    'assets/images/poster3.png'
  ];
  int _currentIndex = 1;
  double borrowedAmount = 110.0;
  double lentAmount = 110.0;
  bool enableYibe = true;
  bool internShip = true;
  bool quickFix = true;
  bool startUp = true;
  bool willingTeach = true;
  Color green = Color(0xFF0CB5BB);
  Color blue = Color(0xFF424283);
  bool _isAnyOne = true;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
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
          body: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
              padding:  EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                      height: 135.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Preferences',
                          style: TextStyle(
                            color: Color(0xff0CB5BB), 
                            fontSize: 32.0,
                            fontFamily: 'Poppins',
                            ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Enable Yibe Stats',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    value: enableYibe,
                                    activeColor: Color(0xff0CB5BB),
                                    trackColor: Color(0xFFA7A7A7),
                                    onChanged: (bool val) {
                                      setState(() {
                                        enableYibe = val;
                                      });
                                    },
                                  ),
                                ),
                              
                            ]),
                        GestureDetector(
                                      onTap: (){},
                                        child: Container(
                                        height: 30.0,
                                        width: (MediaQuery.of(context).size.width),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xff0CB5BB),
                                            width: 1.0,
                                            )
                                        ),
                                        child: Center(
                                          child: Text('Access Resume',
                                                   style:  TextStyle(
                                                        color: Color(0xff0CB5BB),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                              thickness: 0.8,
                              color: Color(0xFF9E9E9E),
                            ),
                      ]
                      ),
                  ),
                  Container(
                      height: 265.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Event Passes',
                          style: TextStyle(
                            color: Color(0xff0CB5BB), 
                            fontSize: 22.0,
                            fontFamily: 'Poppins',
                            ),
                        ),
                        CarouselSlider(
                    options: CarouselOptions(
                      initialPage: 1,
                      height: 180.0,
                      autoPlay: true,
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
                        GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>  Passes()));
                                      },
                                        child: Container(
                                        height: 30.0,
                                        width: (MediaQuery.of(context).size.width),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xff0CB5BB),
                                            width: 1.0,
                                            )
                                        ),
                                        child: Center(
                                          child: Text('All Tickets ',
                                                   style:  TextStyle(
                                                        color: Color(0xff0CB5BB),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                              thickness: 0.8,
                              color: Color(0xFF9E9E9E),
                            ),
                      ]
                      ),
                  ),
                  Container(
                      height: 200.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Growth+',
                          style: TextStyle(
                            color: Color(0xff0CB5BB), 
                            fontSize: 22.0,
                            fontFamily: 'Poppins',
                            ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Internship',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    value: internShip,
                                    activeColor: Color(0xff0CB5BB),
                                    trackColor: Color(0xFFA7A7A7),
                                    onChanged: (bool val) {
                                      setState(() {
                                        internShip = val;
                                      });
                                    },
                                  ),
                                ),
                              
                            ]),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Quick Fixes',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    value: quickFix,
                                    activeColor: Color(0xff0CB5BB),
                                    trackColor: Color(0xFFA7A7A7),
                                    onChanged: (bool val) {
                                      setState(() {
                                        quickFix = val;
                                      });
                                    },
                                  ),
                                ),
                              
                            ]),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Co-found/Start-ups ',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    value: startUp,
                                    activeColor: Color(0xff0CB5BB),
                                    trackColor: Color(0xFFA7A7A7),
                                    onChanged: (bool val) {
                                      setState(() {
                                        startUp = val;
                                      });
                                    },
                                  ),
                                ),
                              
                            ]),
                        GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>  GrowthHistory()));
                                      },
                                        child: Container(
                                        height: 30.0,
                                        width: (MediaQuery.of(context).size.width),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xff0CB5BB),
                                            width: 1.0,
                                            )
                                        ),
                                        child: Center(
                                          child: Text('Growth+ History',
                                                   style:  TextStyle(
                                                        color: Color(0xff0CB5BB),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                              thickness: 0.8,
                              color: Color(0xFF9E9E9E),
                            ),
                      ]
                      ),
                  ),
                  Container(
                      height: 230.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Activities',
                          style: TextStyle(
                            color: Color(0xff0CB5BB), 
                            fontSize: 22.0,
                            fontFamily: 'Poppins',
                            ),
                        ),
                        SizedBox(height: 5.0),
                        Text( 'Get Notified by ',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                        SizedBox(height: 8.0),
                        Container(
                    height: 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: _isAnyOne ? green : blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(100))),
                    width: screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isAnyOne = !_isAnyOne;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: _isAnyOne ? green : Colors.white,
                                border: Border.all(
                                    color: _isAnyOne ? green : Colors.white,
                                    width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Text(
                              "AnyOne",
                              style: TextStyle(
                                  color: _isAnyOne ? Colors.white : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        )),
                        Expanded(
                            child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isAnyOne = !_isAnyOne;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: _isAnyOne ? Colors.white : blue,
                                border: Border.all(
                                    color: _isAnyOne ? Colors.white : blue,
                                    width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            child: Text(
                              "InCircle",
                              style: TextStyle(
                                  color: _isAnyOne ? Colors.grey : Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                        SizedBox(height: 5.0),   
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Willing to teach',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Transform.scale(
                                  scale: 0.7,
                                  child: CupertinoSwitch(
                                    value: willingTeach,
                                    activeColor: Color(0xff0CB5BB),
                                    trackColor: Color(0xFFA7A7A7),
                                    onChanged: (bool val) {
                                      setState(() {
                                        willingTeach = val;
                                      });
                                    },
                                  ),
                                ),
                              
                            ]),
                        Row(
                            children: [
                              Spacer(),
                              GestureDetector(
                                child: Container(
                                  width: 140.0,
                                  height: 35.0,
                                  color: Color(0xFfC4C4C4),
                                  child: Center(
                                    child: Text( 'Learn List',
                                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                                            ),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(height: 5.0),   
                        GestureDetector(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(
                                      builder: (context) =>  Archives()));
                                      },
                                        child: Container(
                                        height: 30.0,
                                        width: (MediaQuery.of(context).size.width),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xff0CB5BB),
                                            width: 1.0,
                                            )
                                        ),
                                        child: Center(
                                          child: Text('View Archives',
                                                   style:  TextStyle(
                                                        color: Color(0xff0CB5BB),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                          ),
                                          ),
                                        ),
                                      ),
                                    ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                              thickness: 0.8,
                              color: Color(0xFF9E9E9E),
                            ),
                      ]
                      ),
                  ),
                  Container(
                      height: 145.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Money Matters',
                          style: TextStyle(
                            color: Color(0xff0CB5BB), 
                            fontSize: 32.0,
                            fontFamily: 'Poppins',
                            ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Borrowed',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Text(
                                '$borrowedAmount ',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',color: Color(0xFF0CB5BB)),
                              ),                              
                            ]),
                          SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lent',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',),
                              ),
                              Text(
                                '$lentAmount ',
                                style: TextStyle(fontSize: 16.0,fontFamily: 'Poppins',color: Color(0xFF0CB5BB)),
                              ),                              
                            ]),
                        SizedBox(
                          height: 10.0,
                        ),
                        Divider(
                              thickness: 0.8,
                              color: Color(0xFF9E9E9E),
                            ),
                      ]
                      ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
