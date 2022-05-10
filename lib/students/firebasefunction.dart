import 'package:cloud_firestore/cloud_firestore.dart';

class firebase {
  updaterequest(String chatroomid, messagemap) async {
    await FirebaseFirestore.instance
        .collection("mentor")
        .doc("request")
        .update(messagemap)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future<dynamic> getdata() async {
    var a = await FirebaseFirestore.instance
        .collection("mentor")
        .doc("request")
        .get()
        .catchError((e) {
      print(e);
    });
    print(a.data());
    return a.data();
  }
}
