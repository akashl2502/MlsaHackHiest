import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Qrcode extends StatefulWidget {
  var name;
  var rollno;
  var randomkey;
  Qrcode({this.name, this.randomkey, this.rollno});

  @override
  State<Qrcode> createState() => _QrcodeState();
}

class _QrcodeState extends State<Qrcode> {
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Approval",style: TextStyle(color: Colors.black)),elevation: 0,
          brightness: Brightness.light,
          centerTitle: true,
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
          ),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Approval Has Been Accepted .Click The Below Button To Generate Qrcode",
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(68.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GenerateQRPage(
                                  name: widget.name,
                                  rollno: widget.rollno,
                                  randomkey: widget.randomkey,
                                )));
                  },
                  child: Text(
                    "Qrcode",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class GenerateQRPage extends StatefulWidget {
  var name;
  var rollno;
  var randomkey;
  GenerateQRPage({this.name, this.randomkey, this.rollno});
  @override
  _GenerateQRPageState createState() => _GenerateQRPageState();
}

class _GenerateQRPageState extends State<GenerateQRPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          brightness: Brightness.light,
          centerTitle: true,
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
        title: Text('QR GENERATOR',style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70,left: 30),
              child: QrImage(
                data: "${widget.name}/${widget.rollno}/${widget.randomkey}",
                size: 300,
                embeddedImageStyle: QrEmbeddedImageStyle(size: Size(80, 80)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top :50,left: 20),
              child: Text("Show This To The Security",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            )
            
          ],
        ),
      ),
    );
  }
}
