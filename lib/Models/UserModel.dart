
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:queuing_system/Models/LocationModel.dart';
import 'package:queuing_system/Models/NameModel.dart';

class UserDetailsModel {
  String 
    age,
    contact,
    currentQueue,
    email,
    qrID,
    messagingToken,
    secretLoginHash,
    storeAppointed,
    userType,
    id;

  NameModel name;
  LocationModel location;
  DateTime registeredDate;

  UserDetailsModel ( String id, Map<dynamic, dynamic> data ) {
    this.id = id ?? "";
    this.age = data["age"] ?? "";
    this.contact = data["contact"] ?? "";
    this.currentQueue = data["currentQueue"] ?? "";
    this.email = data["email"] ?? "";
    this.qrID = data["qrID"] ?? "";
    this.messagingToken = data["messagingToken"] ?? "";
    this.secretLoginHash = data["secretLoginHash"] ?? "";
    this.storeAppointed = data["storeAppointed"] ?? "";
    this.userType = data["userType"] ?? "";
    this.name = NameModel( data["name"] ?? {} );
    this.location = LocationModel( data["location"] ?? {} );
    if(data['registeredDate'] is DateTime){
      this.registeredDate = data['registeredDate'];
    } else if((data['registeredDate'] as Timestamp) != null){
      this.registeredDate = (data['registeredDate'] as Timestamp).toDate();
    }
  }

  setUserDetails() {
    return {
      "age" : this.age,
      "contact" : this.contact,
      "currentQueue" : this.currentQueue,
      "email" : this.email,
      "qrID" : this.qrID,
      "messagingToken" : this.messagingToken,
      "secretLoginHash" : this.secretLoginHash,
      "storeAppointed" : this.storeAppointed,
      "userType" : "normal",
      "name" : this.name.setName(),
      "location" : this.location.setLocation(),
      "registeredDate" : FieldValue.serverTimestamp(),
    };
  }
}