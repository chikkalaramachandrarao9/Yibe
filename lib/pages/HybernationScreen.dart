import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HybernationScreen extends StatefulWidget {
  Function hyberActivation;
  HybernationScreen({this.hyberActivation});
  @override
  _HybernationScreenState createState() => _HybernationScreenState();
}

class _HybernationScreenState extends State<HybernationScreen> {
  bool _isPrivate = true;
  bool _isStared = false;
  Color _blue;
  Color _green;
  List<Map> priStar = [];
  List<Map> proStar = [];

  List<Map> temp = [];

  @override
  void initState() {
    // TODO: implement initState

    priStar.add(_allUsers[0]);
    priStar.add(_allUsers[3]);
    priStar.add(_allUsers[5]);
    priStar.add(_allUsers[7]);

    proStar.add(_allUsers[1]);
    proStar.add(_allUsers[2]);
    proStar.add(_allUsers[6]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _blue = hexToColor("#424283");
    _green = hexToColor("#0CB5BB");
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          // title: Text(
          //   "HiberNation Mode",
          //   style: TextStyle(color: Colors.black),
          // ),
          actions: [
            SizedBox(
              width: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/hybernation_notification.svg",
                height: 30,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                widget.hyberActivation(false);
              },
              child: SvgPicture.asset(
                "assets/images/message_24px.svg",
                height: 30,
                color: _isPrivate ? _green : _blue,
              ),
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Column(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: _isPrivate ? _green : _blue,
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
                            _isPrivate = !_isPrivate;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isPrivate ? _green : Colors.white,
                              border: Border.all(
                                  color: _isPrivate ? _green : Colors.white,
                                  width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Text(
                            "Private",
                            style: TextStyle(
                                color: _isPrivate ? Colors.white : Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPrivate = !_isPrivate;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _isPrivate ? Colors.white : _blue,
                              border: Border.all(
                                  color: _isPrivate ? Colors.white : _blue,
                                  width: 2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Text(
                            "Professional",
                            style: TextStyle(
                                color: _isPrivate ? Colors.grey : Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 24,
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        style: TextStyle(fontSize: 15),
                        decoration: new InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: _isPrivate ? _green : _blue,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: _isPrivate ? _green : _blue,
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Search',
                        ),
                      )),

                      //=================================================================================================================
                      SizedBox(
                        width: 10,
                      ),

                      Container(
                        // width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: _isPrivate ? _green : _blue,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        //  width: screenWidth,
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // GestureDetector(
                            //   onTap: () {
                            //     setState(() {
                            //       _isStared = !_isStared;
                            //     });
                            //   },
                            //   child: Container(
                            //     width: 40,
                            //     alignment: Alignment.center,
                            //     decoration: BoxDecoration(
                            //         color: _isPrivate
                            //             ? !_isStared ? _green : Colors.white
                            //             : !_isStared ? _blue : Colors.white,
                            //         borderRadius:
                            //             BorderRadius.all(Radius.circular(5))),
                            //     child: Text(
                            //       "All",
                            //       style: TextStyle(
                            //           color: _isPrivate
                            //               ? !_isStared
                            //                   ? Colors.white
                            //                   : _isPrivate ? _green : _blue
                            //               : !_isStared
                            //                   ? Colors.white
                            //                   : _isPrivate ? _green : _blue,
                            //           fontSize: 18),
                            //     ),
                            //   ),
                            // ),
                            Container(
                                width: 80,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: _isPrivate ? _green : _blue,
                                    // border: Border.all(
                                    //     color:
                                    //         _isPrivate ? Colors.white : _blue,
                                    //     width: 2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _isPrivate ? priStar.length : proStar.length,
                    itemBuilder: (context, index) {
                      if (_isPrivate) {
                        temp = priStar;
                      } else {
                        temp = proStar;
                      }

                      return Column(
                        children: [
                          // Container(
                          //   height: 70,
                          //   width: screenWidth,
                          //   alignment: Alignment.centerLeft,
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     children: [
                          //       CircleAvatar(
                          //         radius: 30,
                          //       ),
                          //       SizedBox(width: 10),
                          //       Padding(
                          //         padding: const EdgeInsets.symmetric(
                          //             vertical: 8),
                          //         child: Column(
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.start,
                          //           children: [
                          //             Text("Tejas"),
                          //             Spacer(),
                          //             Row(
                          //               children: [
                          //                 Text("Tejas"),
                          //                 Spacer(),
                          //                 Text("data")
                          //               ],
                          //             )
                          //           ],
                          //         ),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          ListTile(
                            contentPadding: EdgeInsets.all(0),
                            leading: CircleAvatar(
                              backgroundImage: temp[index]["image"],
                              radius: 29,
                            ),
                            title: Container(
                                padding: EdgeInsets.only(bottom: 13),
                                child: Text(
                                  temp[index]["msg"],
                                  style: TextStyle(fontSize: 18),
                                )),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(temp[index]["name"]),
                                Text(temp[index]["type"]),
                                Spacer(),
                                Text(temp[index]["time"]),
                              ],
                            ),
                          ),
                          Divider(
                            height: 0,
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ));
  }

  List<Map> _allUsers = [
    {
      "image": AssetImage("assets/images/simba.png"),
      "name": "Sim.dev : ",
      "type": "Close Friend",
      "time": "2min ago",
      "msg": "What’s the update on the current Development?"
    },
    {
      "image": AssetImage("assets/images/sundar.png"),
      "name": "Sunder : ",
      "type": "Friend",
      "time": "17min ago",
      "msg": "Excited for the match!"
    },
    {
      "image": AssetImage("assets/images/rujuta.png"),
      "name": "Rujuta : ",
      "type": "Close Friend",
      "time": "33min ago",
      "msg": "Are you joining activity saturday night ?"
    },
    {
      "image": AssetImage("assets/images/yash.png"),
      "name": "Yash : ",
      "type": "Friend",
      "time": "42min ago",
      "msg": "Where you got your cut ,g"
    },
    {
      "image": AssetImage("assets/images/nicky.png"),
      "name": "Nicky : ",
      "type": "Close Friend",
      "time": "51min ago",
      "msg": "Excited for the match!"
    },
    {
      "image": AssetImage("assets/images/rajani.png"),
      "name": "Rajani : ",
      "type": "Friend",
      "time": "59min ago",
      "msg": "Are you joining activity saturday Afternoon ?"
    },
    {
      "image": AssetImage("assets/images/rupam.png"),
      "name": "Rupam : ",
      "type": "Close Friend",
      "time": "1hr ago",
      "msg": "What’s the update on the current Development?"
    },
    {
      "image": AssetImage("assets/images/vaibhavi.png"),
      "name": "Vaibhavi : ",
      "type": "Close Friend",
      "time": "2hr ago",
      "msg": "Excited for the match!"
    },
    {
      "image": AssetImage("assets/images/sweta.png"),
      "name": "Sweta : ",
      "type": "Close Friend",
      "time": "3hr ago",
      "msg": "Are you joining activity saturday night ?"
    },
  ];

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
