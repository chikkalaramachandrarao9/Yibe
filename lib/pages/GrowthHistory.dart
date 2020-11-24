import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GrowthHistory extends StatefulWidget {
  @override
  _GrowthHistoryState createState() => _GrowthHistoryState();
}

class _GrowthHistoryState extends State<GrowthHistory> {

  String startDate = 'Jan \'20';
  String endDate= 'July \'20';

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
                padding:  EdgeInsets.only(left:18.0,bottom: 8.0),
                child: Text('Active',
                      style: TextStyle(
                      color: Color(0xff0CB5BB), 
                      fontSize: 32.0,
                      fontFamily: 'Poppins',
                     ),
                  ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:18.0,bottom: 5.0,top: 5.0),
                      child: Text('Internship',
                              style: TextStyle(
                              color: Color(0xff7280FF), 
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              ),
                            ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Color(0xFFA7A7A7),
                    ),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context,index){
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: AssetImage('assets/images/simba.png'),
                                      ),
                              title: Text('Simba Developers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                              subtitle: Row(// for date and time
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                    SvgPicture.asset( 'assets/images/play_logo.svg',
                                                      width: 20.0,
                                                      height: 20.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Container(
                                      width: 195.0,
                                      child: Text( '$startDate to $endDate',
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
                          ],
                        );
                      }
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:18.0,bottom: 5.0,top: 5.0),
                      child: Text('Projects',
                              style: TextStyle(
                              color: Color(0xff6197FF), 
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              ),
                            ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Color(0xFFA7A7A7),
                    ),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context,index){
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: AssetImage('assets/images/simba.png'),
                                      ),
                              title: Text('Simba Developers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                              subtitle: Row(// for date and time
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                    SvgPicture.asset( 'assets/images/play_logo.svg',
                                                      width: 20.0,
                                                      height: 20.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Container(
                                      width: 195.0,
                                      child: Text( '$startDate to $endDate',
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
                          ],
                        );
                      }
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:18.0,bottom: 5.0,top: 5.0),
                      child: Text('QuickFixes',
                              style: TextStyle(
                              color: Color(0xff00D09E), 
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              ),
                            ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Color(0xFFA7A7A7),
                    ),
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context,index){
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text('Job Title(descriptive)',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                                ),
                            SizedBox(height:5.0),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
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
                                      child: Text('$startDate to $endDate',
                                                style: TextStyle(
                                                      fontSize: 14.0,
                                                ),
                                              ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(height:5.0),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFFA7A7A7),
                              ),
                          ],
                      );
                        }
                      ),
                  ],
                ),
              ),
              SizedBox(height:10.0),
              Padding(
                padding:  EdgeInsets.only(left:18.0),
                child: Text('History',
                      style: TextStyle(
                      color: Color(0xff0CB5BB), 
                      fontSize: 32.0,
                      fontFamily: 'Poppins',
                     ),
                  ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:18.0,bottom: 5.0,top: 5.0),
                      child: Text('Internship',
                              style: TextStyle(
                              color: Color(0xff7280FF), 
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              ),
                            ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Color(0xFFA7A7A7),
                    ),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context,index){
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: AssetImage('assets/images/simba.png'),
                                      ),
                              title: Text('Simba Developers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                              subtitle: Row(// for date and time
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                    SvgPicture.asset( 'assets/images/play_logo.svg',
                                                      width: 20.0,
                                                      height: 20.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Container(
                                      width: 195.0,
                                      child: Text( '$startDate to $endDate',
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
                          ],
                        );
                      }
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:18.0,bottom: 5.0,top: 5.0),
                      child: Text('Projects',
                              style: TextStyle(
                              color: Color(0xff6197FF), 
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              ),
                            ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Color(0xFFA7A7A7),
                    ),
                    ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context,index){
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                        radius: 30.0,
                                        backgroundImage: AssetImage('assets/images/simba.png'),
                                      ),
                              title: Text('Simba Developers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  ),
                              subtitle: Row(// for date and time
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                    SvgPicture.asset( 'assets/images/play_logo.svg',
                                                      width: 20.0,
                                                      height: 20.0,
                                    ),
                                    SizedBox(width: 8.0),
                                    Container(
                                      width: 195.0,
                                      child: Text( '$startDate to $endDate',
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
                          ],
                        );
                      }
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left:18.0,bottom: 5.0,top: 5.0),
                      child: Text('QuickFixes',
                              style: TextStyle(
                              color: Color(0xff00D09E), 
                              fontSize: 18.0,
                              fontFamily: 'Poppins',
                              ),
                            ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: Color(0xFFA7A7A7),
                    ),
                    ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context,index){
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0),
                                  child: Text('Job Title(descriptive)',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                                ),
                            SizedBox(height:5.0),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
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
                                      child: Text('$startDate to $endDate',
                                                style: TextStyle(
                                                      fontSize: 14.0,
                                                ),
                                              ),
                                    ),
                                ],
                              ),
                            ),
                            SizedBox(height:5.0),
                            Divider(
                              thickness: 1.0,
                              color: Color(0xFFA7A7A7),
                              ),
                          ],
                      );
                        }
                      ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}