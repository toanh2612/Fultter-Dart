import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandWidget02 extends StatelessWidget {
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: screenSize.height,
      width: screenSize.width,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          children: <Widget>[row1(), row2(),row3(),Expanded(
            flex:1,
            child: row4(),
          )],
        ),
      ),
    ));
  }

  Widget row1() {
    return Row(
      children: [
        Container(
            child: Text('01',
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.black,
                    fontWeight: FontWeight.w400)))
      ],
    );
  }

  Widget generatorTextRow2(text) {
    return Row(
      children: <Widget>[
        Container(
        child: Text(text,
            style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.w400)))
      ],
    );
  }

  Widget row2() {
    return Column(
      children: [
generatorTextRow2('Impact of'),
generatorTextRow2('Gender and'),
generatorTextRow2('Attractiveness')
      ],
    );
  }
  Widget row3() {
    return Container(
      height: 200,
      width: 300,
      child: Image(image: AssetImage('assets/images/2.jpg' )),
    );
  }

  Widget row4() {
    return Row(
                    children: <Widget>[
                      Container(
                          // color: Colors.amber,
                          width: 150,
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
                  );
  }
}
