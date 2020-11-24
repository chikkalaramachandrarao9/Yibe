import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

double screenWidth;

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String organiserId = 'simba';
  int age = 19, phone = 6505665689;
  String city = 'Pune',
      add = '7W Adams Street Stanford, CA 911234',
      email = 'richard.esward@gmail.com',
      LinkedIn = 'linkedin.com/in/richesward',
      Twitter = 'twitter.com/richesward';
  List<String> namesofSection = [
    'Personal Information',
    'Skills',
    'Interest',
    'Experience',
    'Education',
    'Achievement',
    'Yibe stats'
  ];
  bool isPresonalInfo = false;
  bool isSkills = false;
  bool isInterest = false;
  bool isExperience = false;
  bool isEducation = false;
  bool isAchivemnets = false;
  bool isYibe = false;
  bool profileVisible = false;
  List<bool> valueofSection = [false, false, false, false, false, false, false];
  bool isEditMode = false;
  List<String> btnSvgName = [
    'assets/images/download_btn.svg',
    'assets/images/viewpdf_btn.svg',
    'assets/images/lock_btn.svg',
    'assets/images/share_btn.svg',
  ];
  List<String> btnName = ['save', 'View PDF', 'Lock', 'Get Link'];
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
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
        physics: ScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.fromLTRB(18.0, 8.0, 18.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Resume',
                style: TextStyle(
                  color: Color(0xFF0CB5BB),
                  fontSize: 32.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Suraj Suryavanshi',
                style: TextStyle(
                  color: Color(0xFF424283),
                  fontSize: 32.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '@ $organiserId',
                style: TextStyle(
                  color: Color(0xFFA7A7A7),
                  fontSize: 16.0,
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isPresonalInfo = !isPresonalInfo;
                  });
                },
                topicName: 'Personal Information',
                isVisible: isPresonalInfo,
                dropdownContainer: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Age : $age',
                            style: TextStyle(
                                fontSize: 16.0, fontFamily: 'Poppins'),
                          ),
                          SizedBox(width: screenWidth * 0.2),
                          Text(
                            'City : $city',
                            style: TextStyle(
                                fontSize: 16.0, fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        add,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        phone.toString(),
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'LinkedIn',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'LinkedIn',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'Twitter',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        Twitter,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      isEditMode
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text(
                                    'Visibility',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Transform.scale(
                                    scale: 0.7,
                                    child: CupertinoSwitch(
                                      value: profileVisible,
                                      activeColor: Color(0xff0CB5BB),
                                      trackColor: Color(0xFFA7A7A7),
                                      onChanged: (bool val) {
                                        setState(() {
                                          profileVisible = val;
                                        });
                                      },
                                    ),
                                  ),
                                ])
                          : SizedBox(),
                    ],
                  ),
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isSkills = !isSkills;
                  });
                },
                topicName: 'Skills',
                isVisible: isSkills,
                dropdownContainer: Container(
                  child: Text('Skills'),
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isInterest = !isInterest;
                  });
                },
                topicName: 'Interest',
                isVisible: isInterest,
                dropdownContainer: Container(
                  child: Text('Interest'),
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isExperience = !isExperience;
                  });
                },
                isVisible: isExperience,
                topicName: 'Experience',
                dropdownContainer: Container(
                  child: Text('Experience'),
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isEducation = !isEducation;
                  });
                },
                topicName: 'Education',
                isVisible: isEducation,
                dropdownContainer: Container(
                  child: Text('Education'),
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isAchivemnets = !isAchivemnets;
                  });
                },
                topicName: 'Achievements',
                isVisible: isAchivemnets,
                dropdownContainer: Container(
                  child: Text('Achivement'),
                ),
              ),
              ResumeTopic(
                isEditMode: isEditMode,
                onTapFunction: () {
                  setState(() {
                    isYibe = !isYibe;
                  });
                },
                topicName: 'Yibe Stats ',
                isVisible: isYibe,
                dropdownContainer: Container(
                  child: Text('Yibe stats'),
                ),
              ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width,
              //     child: ListView.builder(
              //     itemCount: namesofSection.length,
              //     shrinkWrap: true,
              //     itemBuilder: (BuildContext context,index){
              //       return Padding(
              //         padding:  EdgeInsets.symmetric(vertical: 8.0),
              //         child: GestureDetector(
              //           onTap: (){
              //             setState(() {

              //             });
              //           },
              //           child: Row(
              //             children:[
              //               SvgPicture.asset('assets/images/down_arrow.svg',
              //                               width: 14.0,
              //                               height: 10.0,
              //               ),
              //               SizedBox(width:5.0),
              //               Text(namesofSection[index],
              //                   style: TextStyle(
              //                     color: Color(0xFF7280FF),
              //                     fontSize: 20.0,
              //                   ),
              //               ),
              //               Spacer(),
              //               isEditMode ? SvgPicture.asset('assets/images/edit_icon.svg',
              //                               width: 14.0,
              //                               height: 10.0,
              //               ): SizedBox(),
              //             ]
              //           ),

              //         ),
              //       );
              //     }
              //     ),
              // ),
              isEditMode
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 5.0, 0.0, 5.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          '+ Add Section',
                          style: TextStyle(
                            color: Color(0xFF424283),
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    )
                  : SizedBox(),
              SizedBox(height: 10.0),
              isEditMode
                  ? Padding(
                      padding: EdgeInsets.only(
                          left: (MediaQuery.of(context).size.width) * 0.2),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/images/download_btn.svg',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              Text(
                                'save',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Color(0xFF7280FF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 15.0),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/images/viewpdf_btn.svg',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              Text(
                                'View PDF',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Color(0xFF7280FF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 15.0),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/images/lock_btn.svg',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              Text(
                                'Lock',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Color(0xFF7280FF),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 15.0),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  'assets/images/share_btn.svg',
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              Text(
                                'Get Link',
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Color(0xFF7280FF),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              // isEditMode ? Center(
              //   child: SizedBox(
              //           height: 60.0,
              //           width: 300.0,
              //           child: Row(
              //           children: [
              //             ListView.builder(
              //             itemCount: btnName.length,
              //             itemBuilder: (BuildContext context, index){
              //               return Column(
              //                   children: [
              //                     SvgPicture.asset($btnSvgName[index],
              //                                     width: 40.0,
              //                                     height: 40.0,
              //                     ),
              //                     Text(btnName[index],
              //                         style: TextStyle(
              //                           fontSize: 8.0,
              //                           color: Color(0xFF7280FF),
              //                         ),
              //                     ),
              //                   ],
              //                 );
              //             }
              //            ),
              //           ],
              //         ),
              //   ),
              // ) : SizedBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isEditMode = !isEditMode;
          });
        },
        child: Icon(isEditMode ? Icons.close : Icons.edit,
            color: Color(0xFF7280FF)),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class ResumeTopic extends StatefulWidget {
  const ResumeTopic(
      {Key key,
      this.isEditMode,
      this.onTapFunction,
      this.topicName,
      this.isVisible,
      this.dropdownContainer})
      : super(key: key);

  final bool isEditMode, isVisible;
  final Function onTapFunction;
  final String topicName;
  final Widget dropdownContainer;
  @override
  _ResumeTopicState createState() => _ResumeTopicState();
}

class _ResumeTopicState extends State<ResumeTopic> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: widget.onTapFunction,
            child: Row(children: [
              SvgPicture.asset(
                widget.isVisible
                    ? 'assets/images/up_arrow.svg'
                    : 'assets/images/down_arrow.svg',
                width: 14.0,
                height: 10.0,
              ),
              SizedBox(width: 5.0),
              Text(
                widget.topicName,
                style: TextStyle(
                  color: Color(0xFF7280FF),
                  fontSize: 20.0,
                ),
              ),
              Spacer(),
              widget.isEditMode
                  ? SvgPicture.asset(
                      'assets/images/edit_icon.svg',
                      width: 14.0,
                      height: 10.0,
                    )
                  : SizedBox(),
            ]),
          ),
          widget.isVisible ? widget.dropdownContainer : SizedBox(),
        ],
      ),
    );
  }
}
