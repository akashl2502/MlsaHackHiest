import 'package:flutter/material.dart';

class OtherDetails extends StatefulWidget {
  const OtherDetails({ Key? key }) : super(key: key);

  @override
  State<OtherDetails> createState() => _OtherDetailsState();
}

class _OtherDetailsState extends State<OtherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Other Details",
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
      body: Container(
        height: 450,
        child: Card(
          child: Column(
            children: [
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("AD13089", style: const TextStyle(fontSize: 20)),
                ),
                title: Text(
                  "Admission No :",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("13/02/2002", style: const TextStyle(fontSize: 20)),
                ),
                title: Text("Admission Date :",
                    style: const TextStyle(fontSize: 20)),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("NA", style: const TextStyle(fontSize: 20)),
                ),
                title: Text("Graduation : ",
                    style: const TextStyle(fontSize: 20)),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("NA", style: const TextStyle(fontSize: 20)),
                ),
                title: Text("Graduation Date :",
                    style: const TextStyle(fontSize: 20)),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("NA", style: const TextStyle(fontSize: 20)),
                ),
                title: Text("Achievements : ", style: const TextStyle(fontSize: 20)),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("NA", style: const TextStyle(fontSize: 20)),
                ),
                title: Text("Higher Studies :",
                    style: const TextStyle(fontSize: 20)),
              ),
              ListTile(
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("NA", style: const TextStyle(fontSize: 20)),
                ),
                title: Text("Placement Details :",
                    style: const TextStyle(fontSize: 20)),
              ),
              
            ],
          ),
          elevation: 8,
          shadowColor: Colors.green,
          margin: const EdgeInsets.all(20),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.green, width: 1)),
        ),
      ),
      
    );
  }
}