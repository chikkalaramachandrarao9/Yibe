import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Comment extends StatefulWidget {
  final String profileImage;
  final String name;
  final String time;
  final String likeCount;
  final String type;
  final String postText;
  final String postImage;
  final String msg;
  Comment({
    Key key,
    this.profileImage,
    this.name,
    this.time,
    this.likeCount,
    this.type,
    this.postText,
    this.postImage,
    this.msg,
  }) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        actions: <Widget>[
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/images/back_btn.svg',
                    // width: 31.0,
                    height: 16.0,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  // onLongPress: () {
                  //   widget.hiberPopUp(true);
                  // },
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context){
                    //   return Messages();
                    // }));
                  },
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.profileImage),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  child: Text(
                    widget.name,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  child: Text(
                    widget.time,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              widget.type == "text"
                  ? Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          widget.postText,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: screenWidth,
                        height: 200.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.postImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: screenWidth,
                child: Row(
                  children: [
                    SizedBox(width: 15.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isliked) {
                            isliked = false;
                          } else {
                            isliked = true;
                          }
                        });
                      },
                      child: isliked
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 30.0,
                            )
                          : Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 30.0,
                            ),
                    ),
                    SizedBox(width: 5.0),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          widget.likeCount + " Yibed",
                          style: TextStyle(fontSize: 12),
                        )),
                    Spacer(),
                    SvgPicture.asset('assets/images/message_icon_homePage.svg'),
                    SizedBox(width: 15.0),
                    SizedBox(width: 15.0),
                    SvgPicture.asset('assets/images/share_logo.svg'),
                    SizedBox(width: 15.0),
                  ],
                ),
              ),
              widget.type == "text"
                  ? Container()
                  : Container(
                      padding: EdgeInsets.only(left: 8.0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.msg,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
              Divider(
                thickness: 1.0,
              ),
              Container(padding:EdgeInsets.only(left:15),
                width: double.infinity,
                child: Text(
                  "Comments",
                  style: TextStyle(color: Colors.black, fontSize:16.0,fontWeight:FontWeight.w500),
                ),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    var user = _commentList[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(user["profileImage"]),
                      ),
                      title: Text(user["name"]),
                      subtitle: Text(user["message"]),
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                       Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.profileImage),
                  ),
                ),
              ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4.0,
                            ),
                          ],

                          color: Colors.white,
                          // border: Border.all(
                          //   color: Color(0xff008294),
                          //   width: 1.0,
                          // ),
                          //  border: BoxBorder(),
                          border: Border.all(color: Color(0xff008294)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                                                  child: TextField(
                                      //controller: messageEditingController,
                                      // style: simpleTextStyle(),
                                      decoration: InputDecoration(
                                          hintText: "Post as ${widget.name}",
                                          hintStyle: TextStyle(
                                            color: Color(0xFFA7A7A7),
                                            fontSize: 16,
                                          ),
                                          border: InputBorder.none),
                                    ),
                                  ),SvgPicture.asset('assets/images/message_icon_homePage.svg', color: Color(0xff008294),),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Map> _commentList = [
    {
      "profileImage": "assets/images/Rajani Suryavanshi.png",
      "message": "hello",
      "name": "louis"
    },
    {
      "profileImage": "assets/images/Rajani Suryavanshi.png",
      "message": "hello",
      "name": "louis"
    },
    {
      "profileImage": "assets/images/Rajani Suryavanshi.png",
      "message": "hello",
      "name": "louis"
    },
    {
      "profileImage": "assets/images/Rajani Suryavanshi.png",
      "message": "hello",
      "name": "louis"
    },
    {
      "profileImage": "assets/images/Rajani Suryavanshi.png",
      "message": "hello",
      "name": "louis"
    },
    {
      "profileImage": "assets/images/Rajani Suryavanshi.png",
      "message": "hello",
      "name": "louis"
    },
  ];
}
