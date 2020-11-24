import 'package:flutter/material.dart';

class AddActivity extends StatefulWidget {
  @override
  _AddActivityState createState() => _AddActivityState();
}

class _AddActivityState extends State<AddActivity> {
  final List<String> subjects = [
    "Select Activity",
    "Sports",
    "E sports",
    "Skills+ PeerLearn",
    "Skills+ SocialLearn",
    "Custom"
  ];

  String selectedSubject = "Select Activity";

  String valueChoose;
  double _currentSliderValue = 20;
  bool _isOnline = true;
  bool _isAvailable = true;
  bool _isAlreadyPees = true;
  Color green = Color(0xFF0CB5BB);
  Color blue = Color(0xFF424283);

  List listItem = [
    "Sports",
    "E Sports",
    "Skills+ PeerLearn",
    "Skills+ SocialLearn",
    "Other"
  ];

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
            "Add Activity",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Container(
                child: DropdownButton(
                  hint: Text('Select Activity'),
                  icon: Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  value: valueChoose,
                  onChanged: (newValue) {
                    valueChoose = newValue;
                  },
                  items: listItem.map((valueItem) {
                    return DropdownMenuItem(
                        value: valueItem, child: Text(valueItem));
                  }).toList(),
                ),
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
                          _isOnline = !_isOnline;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isOnline ? green : Colors.white,
                            border: Border.all(
                                color: _isOnline ? green : Colors.white,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Anyone",
                          style: TextStyle(
                              color: _isOnline ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isOnline = !_isOnline;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isOnline ? Colors.white : green,
                            border: Border.all(
                                color: _isOnline ? Colors.white : green,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Incircle",
                          style: TextStyle(
                              color: _isOnline ? Colors.grey : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Tags'),
              ),
              Text('What do you want to play?'),
              TextField(
                decoration: InputDecoration(hintText: 'Title'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Description'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Rules'),
              ),
              Container(
                  padding: EdgeInsets.only(top: 2, bottom: 2),
                  child: Center(
                    child: Text(
                      'Location',
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
                      ))),
              Slider(
                value: _currentSliderValue,
                min: 5,
                max: 25,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
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
                          _isAvailable = !_isAvailable;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isAvailable ? green : Colors.white,
                            border: Border.all(
                                color: _isAvailable ? green : Colors.white,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Available",
                          style: TextStyle(
                              color: _isAvailable ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAvailable = !_isAvailable;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isAvailable ? Colors.white : green,
                            border: Border.all(
                                color: _isAvailable ? Colors.white : green,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Needed",
                          style: TextStyle(
                              color: _isAvailable ? Colors.grey : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                  ],
                ),
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
                          _isAlreadyPees = !_isAlreadyPees;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isAlreadyPees ? green : Colors.white,
                            border: Border.all(
                                color: _isAlreadyPees ? green : Colors.white,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Already Pees",
                          style: TextStyle(
                              color:
                                  _isAlreadyPees ? Colors.white : Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAlreadyPees = !_isAlreadyPees;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _isAlreadyPees ? Colors.white : green,
                            border: Border.all(
                                color: _isAlreadyPees ? Colors.white : green,
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Text(
                          "Needed Pees",
                          style: TextStyle(
                              color:
                                  _isAlreadyPees ? Colors.grey : Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
