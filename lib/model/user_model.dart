class User {
  late String userName;
  late String password;
  late String email;
  late String phoneNumber;

  User({
    required this.userName,
    required this.password,
    required this.email,
    required this.phoneNumber,
  });

  User.fromJson(Map<String, dynamic> json)
      :
        userName = json['userName'],
        password = json['password'],
        email = json['email'],
        phoneNumber = json['phoneNumber'];

   Map<String, dynamic> toJson() => {
    'userName' : userName,
    'password' : password,
    'email' : email,
    'phoneNumber' : phoneNumber,
   };
}