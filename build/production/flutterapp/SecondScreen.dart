import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(

      height: size.height,
      width: size.height,
      color: Colors.cyan.shade900,
      child: Padding(
          padding: EdgeInsets.fromLTRB(size.width * 0.05, size.height * 0.05, size.width * 0.05, size.height * 0.05),
          child: Column(
            children: <Widget>[
              Container(
                margin:EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: size.width * 0.77,
                          height: 50,
                          child: Text(
                            'Hi, Toanh',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/2.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical:4),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width:1,color: Colors.white)),
                    
                child: TextField(
                  decoration: InputDecoration(hintText: 'Search',fillColor: Colors.white70,hoverColor: Colors.white70),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,

                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          // height: size.height * 0.4,
                          // width: size.width * 0.6,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.white)),
                          child: Text(
                            'Hi, Toanh',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topCenter,
                          // height: size.height * 0.4,
                          // width: size.width * 0.6,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(width:1,color: Colors.white)),
                          child: Text(
                            'Hi, Toanh',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
