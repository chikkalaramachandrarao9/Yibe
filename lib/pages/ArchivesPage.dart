import 'package:flutter/material.dart';

class Archives extends StatefulWidget {
  @override
  _ArchivesState createState() => _ArchivesState();
}

class _ArchivesState extends State<Archives> {
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
                padding:  EdgeInsets.only(left:18.0),
                child: Text('Active',
                      style: TextStyle(
                      color: Color(0xff0CB5BB), 
                      fontSize: 32.0,
                      fontFamily: 'Poppins',
                     ),
                  ),
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context,index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       ListTile(
                          leading: CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage: AssetImage('assets/images/profile_photo.png'),
                                  ),
                          title: Text('Activities Groupchat',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                  ),
                              ),
                          subtitle: Text('That kinda makes me happy',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                              ),
                          trailing: Text('15 minutes ago',
                                  style: TextStyle(
                                    color: Color(0xFFA7A7A7),
                                    fontFamily: 'Poppins',
                                    fontSize: 10.0,
                                  ),
                              ),
                        ),
                        Divider(
                          indent: 20.0,
                          endIndent: 20.0,
                          thickness: 1.0,
                          color: Color(0xFFA7A7A7),
                          ),
                      ],
                  );
                }, 
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
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (BuildContext context,index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       ListTile(
                          leading: CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage: AssetImage('assets/images/profile_photo.png'),
                                  ),
                          title: Text('Activities Groupchat',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold
                                  ),
                              ),
                          subtitle: Text('That kinda makes me happy',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                  ),
                              ),
                          trailing: Text('15 minutes ago',
                                  style: TextStyle(
                                    color: Color(0xFFA7A7A7),
                                    fontFamily: 'Poppins',
                                    fontSize: 10.0,
                                  ),
                              ),
                        ),
                        Divider(
                          indent: 20.0,
                          endIndent: 20.0,
                          thickness: 1.0,
                          color: Color(0xFFA7A7A7),
                          ),
                      ],
                  );
              }, 
      ),
            ],
          ),
    ),
    );
  }
}