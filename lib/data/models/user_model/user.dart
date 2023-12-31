class User {
  int? id;
  String? firstName;
  String? lastName;
  String? gender;
  String? email;
  String? number;

  User({this.firstName, this.lastName, this.gender, this.number});

  User.fromJson(Map<dynamic, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    email = json['email'];
    number = json['number'];
    id = json['id'];

  }

 //String get name => this.name;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['number'] = this.number;
    data['id'] = this.id;
    return data;
  }
}