import 'package:flutter/material.dart';

class Bmicalc extends StatefulWidget {
  @override
  _BmicalcState createState() => _BmicalcState();
}

double heightGivener = 0.0;
double weightGivener = 0.0;
int ageGivener = 0;

class _BmicalcState extends State<Bmicalc> {
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
          weightGivener = double.parse(value);
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
          heightGivener = double.parse(value);
        });
  }

  Widget output() {
    if (((weightGivener / (heightGivener * heightGivener)) * 10000) <= 18.5) {
      return Text("Underweight",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.red,
              fontSize: 35,
              fontFamily: "Teko"));
    } else if (18.5 <
            ((weightGivener / (heightGivener * heightGivener)) * 10000) &&
        ((weightGivener / (heightGivener * heightGivener)) * 10000) <= 24.9) {
      return Text("Normal or Healthy Weight",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.green,
              fontSize: 35,
              fontFamily: "Teko"));
    } else if (25.0 <
            ((weightGivener / (heightGivener * heightGivener)) * 10000) &&
        ((weightGivener / (heightGivener * heightGivener)) * 10000) <= 29.9) {
      return Text("Normal or Healthy Weight",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.redAccent,
              fontSize: 35,
              fontFamily: "Teko"));
    } else if (30 <=
        ((weightGivener / (heightGivener * heightGivener)) * 10000)) {
      return Text("Obese",
          textAlign: TextAlign.center,
          style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.red,
              fontSize: 35,
              fontFamily: "Teko"));
    } else {
      return Text(" ");
    }
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
          ageGivener = int.parse(value);
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
                      SizedBox(height: 30),
                      // IconButton(
                      //     icon: Icon(Icons.arrow_back_ios_outlined),
                      //     onPressed: () {
                      //       Navigator.pop(context);
                      //     }),

                      output(),
                      SizedBox(height: 60),
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
                            // output();
                            setState(() {});
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
                          )),
                      Text(
                          "${double.parse(((weightGivener / (heightGivener * heightGivener)) * 10000).toStringAsFixed(2))}",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.blue[800],
                              fontSize: 50,
                              fontFamily: "Teko")),
                    ]),
              ))),
    );
  }
}
