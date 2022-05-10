import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  State<Attendence> createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Attendence Details",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
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
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Data Analytics",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10),
                                child: CircularPercentIndicator(
                                    radius: 30,
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.4,
                                    center: new Text(
                                      "40 %",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.amber,
                                    progressColor: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Embedded System",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10),
                                child: CircularPercentIndicator(
                                    radius: 30,
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.4,
                                    center: new Text(
                                      "40 %",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.amber,
                                    progressColor: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Android Programming",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10),
                                child: CircularPercentIndicator(
                                    radius: 30,
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.4,
                                    center: new Text(
                                      "40 %",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.amber,
                                    progressColor: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Programming in Python",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10),
                                child: CircularPercentIndicator(
                                    radius: 30,
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.4,
                                    center: new Text(
                                      "40 %",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.amber,
                                    progressColor: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Cloud Computing",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10),
                                child: CircularPercentIndicator(
                                  radius: 30,
                                  animation: true,
                                  animationDuration: 1200,
                                  lineWidth: 15.0,
                                  percent: 0.4,
                                  center: new Text(
                                    "40 %",
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.0),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.butt,
                                  backgroundColor: Colors.amber,
                                  progressColor: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Text(
                                "Machine Learning",
                                style: TextStyle(fontSize: 20),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10, right: 10),
                                child: CircularPercentIndicator(
                                    radius: 30,
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.4,
                                    center: new Text(
                                      "40 %",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.amber,
                                    progressColor: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Total Percent",
                                style: TextStyle(fontSize: 20),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: CircularPercentIndicator(
                                    radius: 45.0,
                                    animation: true,
                                    animationDuration: 1200,
                                    lineWidth: 15.0,
                                    percent: 0.4,
                                    center: new Text(
                                      "60 %",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.0),
                                    ),
                                    circularStrokeCap: CircularStrokeCap.butt,
                                    backgroundColor: Colors.amber,
                                    progressColor: Colors.black),
                              )),
                            ],
                          ),
                        )
                      ]),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 1)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
