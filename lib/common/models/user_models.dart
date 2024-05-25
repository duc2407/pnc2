import 'dart:convert';

class User {
  final String username;
  final String password;
  User({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  User copyWith({
    String? username,
    String? password,
  }) {
    return User(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  String toString() => 'User(username: $username, password: $password)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.username == username && other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode;
}

AuthResponse authResponseFromJson(String str) =>
    AuthResponse.fromJson(json.decode(str));

String authResponseToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
  final String refresh;
  final String access;
  final String name;
  final String role;
  final String? avatar;
  final String? background;

  AuthResponse({
    required this.refresh,
    required this.access,
    required this.name,
    required this.role,
    this.avatar,
    this.background,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        refresh: json["refresh"],
        access: json["access"],
        name: json["name"],
        role: json["role"],
        avatar: json["avatar"],
        background: json["background"],
      );

  Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
        "name": name,
        "role": role,
        "avatar": avatar,
        "background": background,
      };
}

AuthResponseFirstLogin authResponseFirstLoginFromJson(String str) =>
    AuthResponseFirstLogin.fromJson(json.decode(str));

String authResponseFirstLoginToJson(AuthResponseFirstLogin data) =>
    json.encode(data.toJson());

class AuthResponseFirstLogin {
  List<String>? message;
  List<String>? accessToken;

  AuthResponseFirstLogin({
    this.message,
    this.accessToken,
  });

  factory AuthResponseFirstLogin.fromJson(Map<String, dynamic> json) =>
      AuthResponseFirstLogin(
        message: json["message"] == null
            ? []
            : List<String>.from(json["message"]!.map((x) => x)),
        accessToken: json["access_token"] == null
            ? []
            : List<String>.from(json["access_token"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "message":
            message == null ? [] : List<dynamic>.from(message!.map((x) => x)),
        "access_token": accessToken == null
            ? []
            : List<dynamic>.from(accessToken!.map((x) => x)),
      };
}
