import 'package:food_panda_clone/data/models/message_response.dart';

abstract class Repository {
  Future<MessageResponse> getMessage();
}