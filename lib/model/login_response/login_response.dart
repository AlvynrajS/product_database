import 'data.dart';

class LoginResponse {
  String? error;
  String? message;
  Data? data;

  LoginResponse({this.error, this.message, this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        error: json['error'] as String?,
        message: json['message'] as String?,
        data: json['Data'] == null
            ? null
            : Data.fromJson(json['Data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'error': error,
        'message': message,
        'Data': data?.toJson(),
      };
}
