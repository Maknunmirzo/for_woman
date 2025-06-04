class CreatedUserModel {
  final String lastName, email, password, phoneNumber, firstName;

  CreatedUserModel({
    required this.lastName,
    required this.phoneNumber,
    required this.firstName,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
      "phoneNumber": phoneNumber,
    };
  }
}
