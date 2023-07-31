import 'dart:convert';

class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String gender;
  UserModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.gender,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'fullName': fullName});
    result.addAll({'email': email});
    result.addAll({'gender': gender});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      fullName: map['fullName'] ?? '',
      email: map['email'] ?? '',
      gender: map['gender'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  UserModel copyWith({
    String? id,
    String? fullName,
    String? email,
    String? gender,
  }) {
    return UserModel(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      gender: gender ?? this.gender,
    );
  }
}
