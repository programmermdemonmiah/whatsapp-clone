// To parse this JSON data, do
//
//     final chatsUsers = chatsUsersFromJson(jsonString);

import 'dart:convert';

ChatsUsers chatsUsersFromJson(String str) => ChatsUsers.fromJson(json.decode(str));

String chatsUsersToJson(ChatsUsers data) => json.encode(data.toJson());

class ChatsUsers {
  String? name;
  String? profilePicture;
  double? time;
  String? lastMessage;
  bool isRead;
  int? messageCount;
  String? number;
  bool? incommingCall;
  bool? status;

  ChatsUsers({
    this.name,
    this.profilePicture,
    this.time,
    this.lastMessage,
    required this.isRead,
    this.messageCount,
    this.number,
    this.incommingCall,
    this.status,
  });

  factory ChatsUsers.fromJson(Map<String, dynamic> json) => ChatsUsers(
    name: json["name"],
    profilePicture: json["profile_picture"],
    time: json["time"]?.toDouble(),
    lastMessage: json["last_message"],
    isRead: json["isRead"],
    messageCount: json["message_count"],
    number: json["number"],
    incommingCall: json["incomming_call"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "profile_picture": profilePicture,
    "time": time,
    "last_message": lastMessage,
    "isRead": isRead,
    "message_count": messageCount,
    "number": number,
    "incomming_call": incommingCall,
    "status": status,
  };
}
