import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';



void testFireStore() async {
  DocumentReference records =
      FirebaseFirestore.instance.collection('test').doc();
  await records.set({'test': 'testData'});
}

void testToast(BuildContext context) {
  Toast.show("Toast plugin app", context,
      duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
}

void testUrl() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
void takePicture() async {
  FirebaseStorage storage = FirebaseStorage.instance;
  final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
  
  File file = File(pickedFile.path);

  String dlref;
  
  Reference reference = storage.ref().child("sendedIMG_150x150");
  UploadTask uploadTask = reference.putFile(file);
  await uploadTask.then((taskSnapshot) async{
      dlref = await taskSnapshot.ref.getDownloadURL();
  });
  
  print(dlref);
}
