class SignUpFormModel {
  final String? name;
  final String? password;
  final String? email;
  final String? pin;
  final String? ktp;
  final String? profilePicture;

  SignUpFormModel(
      {this.name,
      this.password,
      this.email,
      this.pin,
      this.ktp,
      this.profilePicture});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'pin': pin,
      'profile_picture': profilePicture,
      'ktp': ktp,
    };
  }

  SignUpFormModel copyWith({
    String? pin,
    String? profilePicture,
    String? ktp,
  }) =>
      SignUpFormModel(
          name: name,
          password: password,
          email: email,
          pin: pin ?? this.pin,
          ktp: ktp ?? this.ktp,
          profilePicture: profilePicture ?? this.profilePicture);
}
