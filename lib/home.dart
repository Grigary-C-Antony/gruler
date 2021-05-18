import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gruler/essential.dart';
import 'package:gruler/nav_drawer.dart';
import "my-globals.dart";

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

Color colorGiven = Colors.white;
double valueGiven = 50.5;

///////////////////////////////////////////////////////////////////////

double xOffset = 0;
double yOffset = 0;
double scaleFactor = 1;
double valuer = 30;
// bool blconnected = false;
bool isDrawerOpen = false;
List countries = [];

class _HomepageState extends State<Homepage> {
  getCountries() async {
    var response = await Dio().get(
        'https://script.google.com/macros/s/AKfycbycFDx0ZzHyXPHk8XpeUIT_LAV1OGnniG5JCvVvdV_dABv2wdRxEvBqzosgGsBEDqB5/exec');
    return response.data;
  }

  @override
  void initState() {
    getCountries().then((data) {
      setState(() {
        countries = data;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          backgroundColor:
              !isDrawerOpen ? HexColor("0042a1") : Colors.cyan[200],
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(Icons.refresh_outlined, size: proH(30)),
                onPressed: () {
                  getCountries().then((data) {
                    setState(() {
                      countries = data;
                    });
                  });
                })
          ]),
      body: Stack(children: [
        Drawering(),
        SwipeDetector(
            child: AnimatedContainer(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              transform: Matrix4.translationValues(xOffset, yOffset, 0)
                ..scale(scaleFactor)
                ..rotateY(isDrawerOpen ? -0.5 : 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    isDrawerOpen ? Radius.circular(40) : Radius.circular(0)),
                color: HexColor("0042a1"),
              ),
              duration: Duration(milliseconds: 100),
              child: CustomPaint(
                  painter: CurvePainter(),
                  child: Column(children: [
                    // Expanded(
                    //     flex: 10,
                    //     child: Container(color: Colors.white

                    //         )),
                    Expanded(
                      flex: 32,
                      child: Container(
                          // height: SizeConfig.screenHeight * .40,
                          child: Column(children: [
                        Padding(
                            padding: new EdgeInsets.fromLTRB(
                                proH(40), proH(10), proH(10), 0),
                            child: Row(
                              children: [
                                countries.length >= 0
                                    ? Text(
                                        // "${double.parse((valueGiven).toStringAsFixed(2))}",
                                        "${countries.reversed.toList()[0]["data"]}",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: colorGiven,
                                            fontSize: proW(150),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Teko"))
                                    : Text(
                                        // "${double.parse((valueGiven).toStringAsFixed(2))}",
                                        "-.-",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: colorGiven,
                                            fontSize: proW(150),
                                            fontFamily: "Teko")),
                                SizedBox(width: proW(10)),
                                Padding(
                                  padding: new EdgeInsets.fromLTRB(
                                      0, proH(40), 0, 0),
                                  child: Text("mg/dL",
                                      style: TextStyle(
                                          decoration: TextDecoration.none,
                                          color: colorGiven,
                                          fontSize: proW(50),
                                          fontFamily: "Teko")),
                                ),
                              ],
                            )),
                      ])),
                    ),
                    Expanded(
                      flex: 50,
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      proW(16), 0, proW(16), 0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(210),
                                            child: Column(children: [
                                              SizedBox(height: proH(20)),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(Icons.straighten),
                                              ),
                                              SizedBox(height: proH(5)),
                                              Text("HEIGHT",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.lightBlue,
                                                      fontSize: proW(20),
                                                      fontFamily: "Teko")),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      "${double.parse((heightGiven).toStringAsFixed(2))}",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          color:
                                                              Colors.blue[800],
                                                          fontSize: proW(50),
                                                          fontFamily: "Teko")),
                                                  Padding(
                                                    padding:
                                                        new EdgeInsets.fromLTRB(
                                                            0, proH(15), 0, 0),
                                                    child: Text("cm",
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color: Colors
                                                                .blue[800],
                                                            fontSize: proW(25),
                                                            fontFamily:
                                                                "Teko")),
                                                  ),
                                                ],
                                              ),
                                            ])),
                                      ),
                                      SizedBox(width: proW(30)),
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(210),
                                            child: Column(children: [
                                              SizedBox(height: proH(20)),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child:
                                                    Icon(Icons.fitness_center),
                                              ),
                                              SizedBox(height: proH(5)),
                                              Text("WEIGHT",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.lightBlue,
                                                      fontSize: proW(20),
                                                      fontFamily: "Teko")),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      "${double.parse((weightGiven).toStringAsFixed(2))}",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          color:
                                                              Colors.blue[800],
                                                          fontSize: proW(50),
                                                          fontFamily: "Teko")),
                                                  Padding(
                                                    padding:
                                                        new EdgeInsets.fromLTRB(
                                                            0, proH(15), 0, 0),
                                                    child: Text("Kg",
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color: Colors
                                                                .blue[800],
                                                            fontSize: proW(25),
                                                            fontFamily:
                                                                "Teko")),
                                                  ),
                                                ],
                                              ),
                                            ])),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: proH(30)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      proW(16), 0, proW(16), 0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(210),
                                            child: Column(children: [
                                              SizedBox(height: proH(20)),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(Icons.spa),
                                              ),
                                              SizedBox(height: proH(5)),
                                              Text("BMI",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.lightBlue,
                                                      fontSize: proW(20),
                                                      fontFamily: "Teko")),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      "${double.parse(((weightGiven / (heightGiven * heightGiven)) * 10000).toStringAsFixed(2))}",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          color:
                                                              Colors.blue[800],
                                                          fontSize: proW(50),
                                                          fontFamily: "Teko")),
                                                  Padding(
                                                    padding:
                                                        new EdgeInsets.fromLTRB(
                                                            0, proH(15), 0, 0),
                                                    child: Text("Kg/m\u00B2",
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            color: Colors
                                                                .blue[800],
                                                            fontSize: proW(20),
                                                            fontFamily:
                                                                "Teko")),
                                                  ),
                                                ],
                                              ),
                                            ])),
                                      ),
                                      SizedBox(width: proW(30)),
                                      Expanded(
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(210),
                                            child: Column(children: [
                                              SizedBox(height: proH(20)),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(Icons.cake),
                                              ),
                                              SizedBox(height: proH(5)),
                                              Text("AGE",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.lightBlue,
                                                      fontSize: proW(20),
                                                      fontFamily: "Teko")),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("$age",
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          color:
                                                              Colors.blue[800],
                                                          fontSize: proW(50),
                                                          fontFamily: "Teko")),
                                                ],
                                              ),
                                            ])),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ]),
                      ),
                    )
                  ])),
            ),
            onSwipeLeft: () {
              setState(() {
                xOffset = 0;
                yOffset = 0;
                scaleFactor = 1;
                isDrawerOpen = false;
              });
            },
            onSwipeRight: () {
              setState(() {
                xOffset = proW(280);
                yOffset = SizeConfig.screenHeight * .3;
                scaleFactor = 0.7;
                isDrawerOpen = true;
              });
            }),
      ]),
    );
  }
}
