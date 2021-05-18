import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:gruler/home.dart';

import 'essential.dart';

class ControEss extends StatefulWidget {
  @override
  _ControEssState createState() => _ControEssState();
}

Color colorWEget = HexColor("0049f0");

class _ControEssState extends State<ControEss> {
  // ignore: missing_return
  Color functionCol(index) {
    if (countries.reversed.toList()[index]["data"] < 140) {
      return Colors.green;
    } else if (140 <= countries.reversed.toList()[index]["data"] &&
        countries.reversed.toList()[index]["data"] < 199) {
      return Colors.amber;
    } else if (countries.reversed.toList()[index]["data"] > 200) {
      return Colors.red;
    }
  }

  List countries = [];
  // List filteredCountries = [];
  // bool isSearching = false;

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
    if (countries.length > 0) {
      if (countries.reversed.toList()[0]["data"] < 140) {
        colorWEget = Colors.green[300];
      } else if (140 <= countries.reversed.toList()[0]["data"] &&
          countries.reversed.toList()[0]["data"] < 199) {
        colorWEget = Colors.amber[300];
      } else if (countries.reversed.toList()[0]["data"] > 200) {
        colorWEget = Colors.red[300];
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWEget,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                getCountries().then((data) {
                  setState(() {
                    countries = data;
                  });
                });
              });
            },
          )
        ],
      ),
      body: Container(
          child: CustomPaint(
              painter: CurvePainter1(),
              child: Column(
                children: [
                  countries.length > 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                // "${double.parse((valueGiven).toStringAsFixed(2))}",
                                "${countries.reversed.toList()[0]["data"]}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontSize: proW(150),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Teko")),
                            Text(

                                // "${double.parse((valueGiven).toStringAsFixed(2))}",
                                "mg/dl",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontSize: proW(40),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Teko"))
                          ],
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                  Column(
                    children: [
                      Container(
                        height: SizeConfig.screenHeight * .6,
                        padding: EdgeInsets.all(10),
                        child: countries.length > 0
                            ? ListView.builder(
                                physics: BouncingScrollPhysics(),
                                itemCount: countries.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Card(
                                      color: functionCol(index),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      // elevation: .6,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 30, horizontal: 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Glucose Level : ${countries.reversed.toList()[index]['data']}",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                            Text(
                                              "mg/dl",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                })
                            : Center(
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}

class CurvePainter1 extends CustomPainter {
  double a = 0;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = colorWEget;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.lineTo(0, size.height * .2);
    path.quadraticBezierTo(
        size.width / 2, size.height * .3, size.width, size.height * .2);
    path.lineTo(size.width, 0);
    path.close();
    path.close();

    // paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
