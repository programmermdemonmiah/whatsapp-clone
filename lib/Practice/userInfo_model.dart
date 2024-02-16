// To parse this JSON data, do
//
//     final userInfo = userInfoFromJson(jsonString);

import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
  String? name;
  int? age;
  String? image;
  String? gender;
  String? ocupation;

  UserInfo({
    this.name,
    this.age,
    this.image,
    this.gender,
    this.ocupation,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    name: json["name"],
    age: json["age"],
    image: json["image"],
    gender: json["gender"],
    ocupation: json["ocupation"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "image": image,
    "gender": gender,
    "ocupation": ocupation,
  };
}
