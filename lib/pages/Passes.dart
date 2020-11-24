import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Passes extends StatefulWidget {
  @override
  _PassesState createState() => _PassesState();
}

class _PassesState extends State<Passes> {
  List<String> cardList = [
    'assets/images/poster1.png',
    'assets/images/poster2.png',
    'assets/images/poster3.png'
  ];
  int _currentIndex = 1;
  String date = '31st Mar ‘20 ';
  String time = '24:24 PM';
  String organiserName = 'Delhi Public School,Pune';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:14.0),
                child: Text('Active',
                      style: TextStyle(
                      color: Color(0xff0CB5BB), 
                      fontSize: 32.0,
                      fontFamily: 'Poppins',
                     ),
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
              Padding(
                padding:  EdgeInsets.only(left: (MediaQuery.of(context).size.width)*0.25),
                child: Row(// for date and time
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                  SvgPicture.asset( 'assets/images/play_logo.svg',
                                                    width: 20.0,
                                                    height: 20.0,
                                  ),
                                  SizedBox(width: 8.0),
                                  Container(
                                    width: 195.0,
                                    child: Text( '$date| $time',
                                              style: TextStyle(
                                                    fontSize: 16.0,
                                              ),
                                            ),
                                  ),
                              ],
                            ),
              ),
              Divider(
                  thickness: 1.0,
                  color: Color(0xFFA7A7A7),
                ),
              SizedBox(height:10.0),
              Padding(
                padding:  EdgeInsets.only(left:14.0),
                child: Text('History',
                      style: TextStyle(
                      color: Color(0xff0CB5BB), 
                      fontSize: 32.0,
                      fontFamily: 'Poppins',
                     ),
                  ),
              ),
              Divider(
                  thickness: 1.0,
                  color: Color(0xFFA7A7A7),
                ),
              Padding(
                padding:  EdgeInsets.all(14.0),
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,index){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text('How to be rich',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          SizedBox(height:5.0),
                          Row(// for date and time
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                                SvgPicture.asset( 'assets/images/play_logo.svg',
                                                  width: 20.0,
                                                  height: 20.0,
                                ),
                                SizedBox(width: 8.0),
                                Container(
                                  width: 195.0,
                                  child: Text( '$date| $time',
                                            style: TextStyle(
                                                  fontSize: 14.0,
                                            ),
                                          ),
                                ),
                            ],
                          ),
                          SizedBox(height:5.0),
                          Text('By $organiserName',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: Color(0xFFA7A7A7),
                            ),
                        ],
                    );
                }, 
      ),
              ),
            ],
          ),
    ),
    );
  }
}