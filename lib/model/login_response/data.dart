class Data {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? profilePhoto;
  String? email;
  String? companyId;
  String? departmentId;
  String? roleId;

  Data({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.profilePhoto,
    this.email,
    this.companyId,
    this.departmentId,
    this.roleId,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as String?,
        username: json['username'] as String?,
        profilePhoto: json['profile_photo'] as String?,
        email: json['email'] as String?,
        companyId: json['company_id'] as String?,
        departmentId: json['department_id'] as String?,
        roleId: json['role_id'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'username': username,
        'profile_photo': profilePhoto,
        'email': email,
        'company_id': companyId,
        'department_id': departmentId,
        'role_id': roleId,
      };
}
