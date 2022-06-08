class Data {
  String? firstName;
  String? lastName;
  String? email;
  String? contactNo;
  String? gender;
  String? maritalStatus;
  String? profilePhoto;

  Data({
    this.firstName,
    this.lastName,
    this.email,
    this.contactNo,
    this.gender,
    this.maritalStatus,
    this.profilePhoto,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        email: json['email'] as String?,
        contactNo: json['contact_no'] as String?,
        gender: json['gender'] as String?,
        maritalStatus: json['marital_status'] as String?,
        profilePhoto: json['profile_photo'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'contact_no': contactNo,
        'gender': gender,
        'marital_status': maritalStatus,
        'profile_photo': profilePhoto,
      };
}
