import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandWidget03 extends StatelessWidget {
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: screenSize.height,
      width: screenSize.width,
      padding: EdgeInsets.only(left: 20, right: 20, top: 130),
      child: Container(
        child: Column(
          children: <Widget>[
            row1(),
            Padding(
                padding: EdgeInsets.fromLTRB(
                    0, screenSize.height * 0.05, 0, screenSize.height * 0.05),
                child: row2()),
            Expanded(
              flex: 1,
              child: row3(),
            ),
            Expanded(
              flex: 1,
              child: row4(),
            )
          ],
        ),
      ),
    ));
  }

  Widget row2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        generatorTextRow2('Get The Fastest'),
        generatorTextRow2('Deleviery Food For You'),
      ],
    );
  }

  Widget generatorTextRow2(text) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            width: 340,
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(text,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w900))),
          ),
        )
      ],
    );
  }

  Widget row1() {
    return Container(
      height: 200,
      width: 300,
      child: Image(image: AssetImage('assets/images/shipper.png')),
    );
  }

  Widget row3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        generatorTextRow3('Order food and get deleviery in the fastest'),
        generatorTextRow3('time in the town'),
      ],
    );
  }

  Widget generatorTextRow3(text) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            width: 340,
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(text,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w200))),
          ),
        )
      ],
    );
  }

  Widget row4() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Align(
              alignment: Alignment.topCenter,
              child: FlatButton(
                
                color: Colors.yellow[600],
                textColor: Colors.black,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
              
                padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  /*...*/
                },
                child: Text('Get Started >>',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
