import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:queuing_system/Models/LocationModel.dart';

class StoreModel {
  String
    createdBy,
    storeName,
    id;    

  int currentNumber;
  LocationModel locationModel;
  DateTime createdDate;

  StoreModel( String id, Map<dynamic, dynamic> data ) {
    this.id = id ?? 0;
    this.createdBy = data["createdBy"] ?? "";
    this.storeName = data["storeName"] ?? "";
    this.currentNumber = data["currentNumber"] ?? "";
    this.locationModel = LocationModel(data["location"] ?? "");
    
    if(data['createdDate'] is DateTime){
      this.createdDate = data['createdDate'];
    } else if((data['createdDate'] as Timestamp) != null){
      this.createdDate = (data['createdDate'] as Timestamp).toDate();
    }
  }

  setStoreData() {
    return {
      "createdBy" : this.storeName,
      "storeName" : this.storeName,
      "location" : this.locationModel.setLocation(),
      "createdDate" : this.createdDate,
      "currentNumber" : this.currentNumber,
    };
  }
}