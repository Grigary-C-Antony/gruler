import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'my-globals.dart';

class Physique extends StatefulWidget {
  @override
  _PhysiqueState createState() => _PhysiqueState();
}

class _PhysiqueState extends State<Physique> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Widget weightformField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "Enter Your Weight",
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[800]),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(
                    Radius.circular(30)))), // ignore: missing_return
        // ignore: missing_return
        validator: (String value) {
          if (value.isEmpty) {
            return 'field required';
          }
        },
        onSaved: (String value) {
          weightGiven = double.parse(value);
        });
  }

  Widget heightformField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "Enter Your Height",
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[800]),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        // ignore: missing_return
        validator: (String value) {
          if (value.isEmpty) {
            return 'field required';
          }
        },
        onSaved: (String value) {
          heightGiven = double.parse(value);
        });
  }

  Widget ageformField() {
    return TextFormField(
        decoration: InputDecoration(
            labelText: "Enter Your Age",
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[800]),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        // ignore: missing_return
        validator: (String value) {
          if (value.isEmpty) {
            return 'field required';
          }
        },
        onSaved: (String value) {
          age = int.parse(value);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context); // do something
          },
        ),
        title: Text("Enter Your Physique Details",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.blue[800],
                fontSize: 35,
                fontFamily: "Teko")),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
          child: Form(
              key: formkey,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 80),
                      weightformField(),
                      SizedBox(height: 30),
                      heightformField(),
                      SizedBox(height: 30),
                      ageformField(),
                      SizedBox(height: 30),
                      // ignore: deprecated_member_use
                      TextButton(
                          onPressed: () {
                            if (!formkey.currentState.validate()) {
                              return;
                            }
                            formkey.currentState.save();
                            print("yes");
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Text("Submit",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontFamily: "Teko")),
                          ))
                    ]),
              ))),
    );
  }
}

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  ScrollController controller = ScrollController();
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://en.wikipedia.org/wiki/Noninvasive_glucose_monitor',
    );
  }
}
