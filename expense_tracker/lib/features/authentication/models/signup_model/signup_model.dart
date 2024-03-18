class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNum,
    required this.password,
  });
  String firstName;
  String lastName;
  String email;
  String phoneNum;
  String password;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["firstName"] = firstName;
    data["lastName"] = lastName;
    data["email"] = email;
    data["phoneNum"] = phoneNum;
    data["password"] = password;

    return data;
  }
}

class Otp {
  Otp({required this.otp});

  String otp;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["otp"] = otp;

    return data;
  }
}

class Login {
  Login({required this.email, required this.password});

  String email;
  String password;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data["email"] = email;
    data["password"] = password;

    return data;
  }
}
