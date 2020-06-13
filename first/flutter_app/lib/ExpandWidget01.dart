import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandWidget01 extends StatelessWidget {
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: screenSize.height,
      width: screenSize.width,
      padding: EdgeInsets.only(left: 50),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                height: screenSize.height / 2,
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Communication,',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Society and',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text('Media',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: screenSize.height / 2,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                          // color: Colors.amber,
                          width: 100,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('02',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          )),
                      Container(
                        padding: EdgeInsets.only(top: 0),

                        width: 175,
                        // color: Colors.blue,
                        child: Text(
                            'Although the 10 million individuals who use dating app daily log in an average of 11 times and spend approximately 1.25 hours on the app, the majority do not meet face to face (Lee, 2015; Rea, 2015)',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          
                         
                          child: Text('54',
                              style: TextStyle(
                                  fontSize: 220,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        width: 100,
                       
                        child: Text('\n\n\n%',
                            style: TextStyle(
                                fontSize: 38,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
