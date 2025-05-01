import 'package:chat_app/constants.dart';

class Message {
  final String message;
  final String? id;

  const Message(this.message, this.id);

  factory Message.fromJson(json) => Message(json[kMessage], json[kId]);
}
