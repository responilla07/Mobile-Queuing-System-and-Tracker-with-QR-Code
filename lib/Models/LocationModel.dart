class LocationModel {
  String
    province,
    state,
    street;

  LocationModel( Map<dynamic, dynamic> data ) {
    this.province = data["province"] ?? "";
    this.state = data["state"] ?? "";
    this.street = data["street"] ?? "";
  }

  setLocation() {
    return {
      "province" : this.province,
      "state" : this.state,
      "street" : this.street
    };
  }
}