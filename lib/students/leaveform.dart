
import 'package:flutter/material.dart';
import 'package:untitled/students/firebasefunction.dart';
import 'package:untitled/professor/loginf.dart';

class odout extends StatefulWidget {
  @override
  State<odout> createState() => _odoutState();
}

class _odoutState extends State<odout> {
  late double deviceWidth;
  firebase fc = firebase();
  late double deviceHeight;
  var name;
  var rollno;
  var fromdate;
  var todate;
  var place;
  var reason;
  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Apply Leave College",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter Your Details ",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(
                      label: "Name",
                      varialble: (value) {
                        setState(() {
                          name = value;
                        });
                      }),
                  inputFile(
                      label: "Roll No",
                      varialble: (value) {
                        setState(() {
                          rollno = value;
                        });
                      }),
                  Row(children: [
                    Expanded(
                        child: inputFile(
                            label: "From Date",
                            varialble: (value) {
                              setState(() {
                                fromdate = value;
                              });
                            })),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: inputFile(
                            label: "To Date",
                            varialble: (value) {
                              setState(() {
                                todate = value;
                              });
                            }))
                  ]),
                  inputFile(
                      label: "Place",
                      varialble: (value) {
                        setState(() {
                          place = value;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, right: 230),
                    child: Text('Reason'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        reason = value;
                      });
                    },
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () async{
                    var a = await fc.getdata();
                    print(a);
                    var message = {
                      "name": name,
                      "rollno": rollno,
                      "fromdate": fromdate,
                      "todate": todate,
                      "place": place,
                      "reason": reason
                    };
                  },
                  color: Color(0xff0095FF),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Apply",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false, varialble}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        onChanged: varialble,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}