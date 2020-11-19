class NameModel {
  String
    forename,
    surname;

  NameModel( Map<dynamic, dynamic> data ) {
    this.forename = data["forename"] ?? "";
    this.surname = data["surname"] ?? "";
  }

  setName() {
    return {
      "forename" : this.forename,
      "surname" : this.surname,
    };
  }
}