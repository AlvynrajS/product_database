import 'data.dart';

class ProfileResponse {
  String? error;
  String? message;
  Data? data;

  ProfileResponse({this.error, this.message, this.data});

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    return ProfileResponse(
      error: json['error'] as String?,
      message: json['message'] as String?,
      data: json['Data'] == null
          ? null
          : Data.fromJson(json['Data'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'error': error,
        'message': message,
        'Data': data?.toJson(),
      };
}
