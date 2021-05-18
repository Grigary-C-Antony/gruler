import 'package:flutter/material.dart';
import 'package:gruler/Bmicalculator.dart';
import 'package:gruler/Pdetails.dart';

import 'package:gruler/essential.dart';
import 'package:gruler/table.dart';

import 'controlleres.dart';

class Drawering extends StatefulWidget {
  @override
  _DraweringState createState() => _DraweringState();
}

class _DraweringState extends State<Drawering> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          color: Colors.cyan[200],
          child: ListView(
            // ,
            physics: BouncingScrollPhysics(),
            children: [
              // SizedBox(height: 50),
              Row(
                children: [
                  Container(
                      width: SizeConfig.screenWidth * .7,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                print("yes");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tableo()),
                                );
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  height: proH(160),
                                  width: SizeConfig.screenWidth * .6,
                                  child: Column(children: [
                                    SizedBox(height: 10),
                                    CircleAvatar(
                                      backgroundColor: HexColor("DEDEDE"),
                                      radius: 20,
                                      child: Icon(Icons.change_history),
                                    ),
                                    SizedBox(height: proH(15)),
                                    Text("BLOOD GLUCOSE CHART",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            color: Colors.blue[800],
                                            fontSize: proW(25),
                                            fontFamily: "Teko")),
                                  ])),
                            ),
                            SizedBox(height: 50),
                            Row(children: [
                              Expanded(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 0, 8, 10),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    // Controller()
                                                    ControEss()),
                                          );
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(160),
                                            child: Column(children: [
                                              SizedBox(height: 10),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(Icons.preview),
                                              ),
                                              SizedBox(height: proH(15)),
                                              Text("PREVIOUS\nDATA",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.blue[800],
                                                      fontSize: proW(25),
                                                      fontFamily: "Teko")),
                                            ])),
                                      ))),
                              Expanded(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 0, 8, 10),
                                      child: InkWell(
                                        onTap: () {
                                          print("yes");
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Physique()),
                                          );
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(160),
                                            child: Column(children: [
                                              SizedBox(height: 10),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(
                                                    Icons.self_improvement),
                                              ),
                                              SizedBox(height: proH(15)),
                                              Text("PHYSIQUE\nDETAILS",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.blue[800],
                                                      fontSize: proW(25),
                                                      fontFamily: "Teko")),
                                            ])),
                                      )))
                            ]),
                            SizedBox(height: 30),
                            Row(children: [
                              Expanded(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 10, 8, 0),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Bmicalc()),
                                          );
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(160),
                                            child: Column(children: [
                                              SizedBox(height: 10),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(Icons.spa),
                                              ),
                                              SizedBox(height: proH(15)),
                                              Text("BMI\nCALCULATOR",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.blue[800],
                                                      fontSize: proW(25),
                                                      fontFamily: "Teko")),
                                            ])),
                                      ))),
                              Expanded(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 10, 8, 0),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Aboutus()),
                                          );
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            height: proH(160),
                                            child: Column(children: [
                                              SizedBox(height: 10),
                                              CircleAvatar(
                                                backgroundColor:
                                                    HexColor("DEDEDE"),
                                                radius: 20,
                                                child: Icon(
                                                    Icons.info_outline_rounded),
                                              ),
                                              SizedBox(height: proH(15)),
                                              Text("ABOUT",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.blue[800],
                                                      fontSize: proW(25),
                                                      fontFamily: "Teko")),
                                            ])),
                                      )))
                            ]),
                          ])),
                  Container(
                      color: Colors.transparent,
                      height: SizeConfig.screenHeight,
                      width: SizeConfig.screenWidth * .3),
                ],
              ),
            ],
          )),
    );
  }
}
