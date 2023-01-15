class UserModel {
  String ?id;
  String email;
  String username;
  String? password;
  String dob;
  String profilepic;
  String? regDate;
  String type;

  UserModel({
    this.id,
    required this.email,
    required this.username,
    this.password,
    required this.dob,
    required this.profilepic,
    this.regDate,
    required this.type,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
      id: json['id'],
      email: json['email'],
      username: json['username'],
      password: json['password'],
      dob: json['dob'],
      profilepic: json['profilepic'],
      regDate: json['regDate'],
      type: json['type']);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'username': username,
      'password': password,
      'dob': dob,
      'profilepic': profilepic,
      'regDate': regDate,
      'type': type,
    };
  }
}
