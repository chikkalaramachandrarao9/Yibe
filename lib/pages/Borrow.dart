import 'package:flutter/material.dart';

class Borrow extends StatelessWidget {
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
              "Borrow",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: SingleChildScrollView(child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Center(
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(15),
              //     child: Container(
              //       margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              //       height: 230,
              //       width: MediaQuery.of(context).size.width,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: Colors.grey),
              //       child: _camState
              //           ? QRBarScannerCamera(
              //               onError: (context, error) => Text(
              //                 error.toString(),
              //                 style: TextStyle(color: Colors.red),
              //               ),
              //               qrCodeCallback: (code) {
              //                 _qrCallback(code);
              //               },
              //             )
              //           : Container(),
              //     ),
              //   ),
              // ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  //   color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage('assets/images/scanner_money.png')),
                ),
              ),
              Padding(padding:EdgeInsets.symmetric(vertical:12),child:Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Total amout borrowed',style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,)),
                        Text('\₹1583',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF05E896),)),
                      ]),),
                ),
              ),
              Container(
                child: Text(
                  'Active',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff12ACB1),
                      fontSize: 20.0),
                ),
              ),
              //  Container(child: Text('Reminder', style:
              // TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),),),
              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(padding:EdgeInsets.symmetric(vertical:2),child:Row(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[Text(
                    'Suraj',
                    style: TextStyle(fontSize: 16.0),
                  ),Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0,color:Colors.grey),
                  ),]),
                  Spacer(),
                  Text(
                    '\₹150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  ButtonTheme(
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
                  ),
                ],
              ),
              ),

              Padding(padding:EdgeInsets.symmetric(vertical:0),child:Row(
                children: [Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children:[Text(
                    'Sasha',
                    style: TextStyle(fontSize: 16.0),
                  ),Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0,color:Colors.grey),
                  ),]),
                  Spacer(),
                  Text(
                    '\₹150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  ButtonTheme(
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
                  ),
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
              // TextStyle(color: Color(0xff12ACB1), fontSize: 25.0),),)
              //                 Text('Given to' , style: TextStyle(fontWeight: FontWeight.bold),),
              Padding(padding:EdgeInsets.symmetric(vertical:8),child:Row(
                children: [
                  Text(
                    'Suraj',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\$150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0,color:Colors.grey),
                  ),
                ],
              ),),
              Padding(padding:EdgeInsets.symmetric(vertical:8),child:Row(
                children: [
                  Text(
                    'Sasha',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '\$150',
                    style: TextStyle(color: Color(0xff12ACB1), fontSize: 16.0),
                  ),
                  Spacer(),
                  Text(
                    '16-04-20',
                    style: TextStyle(fontSize: 16.0,color:Colors.grey),
                  ),
                ],),
              ),
            ],
          ),
        )));
  }
}
