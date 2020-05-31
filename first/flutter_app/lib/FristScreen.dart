import 'package:flutter/material.dart';

class FristSceen extends StatelessWidget {
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Container(
              height: size.height,
              width: size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.02,
                          size.height * 0.1,
                          size.width * 0.1,
                          size.height * 0.1),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.black,
                              size: 24.0,
                              semanticLabel:
                                  'Text to announce in accessibility modes',
                            ),
                            Text(
                              'Preview',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.16, 0, size.width * 0.01, 0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Rosé',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                          size.width * 0.02,
                          size.height * 0.65,
                          size.width * 0.1,
                          0
                        ),
                        child: 
                        Text('Swipe to see more',
                          style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold)
                        ),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/2.jpg"),
                      fit: BoxFit.cover))),
        ],
      ),
    ));
  }
}
