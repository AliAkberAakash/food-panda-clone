import 'dart:async';

import 'package:food_panda_clone/data/models/message_response.dart';
import 'package:food_panda_clone/utils/constants.dart';
import 'package:food_panda_clone/utils/shared_pref_utils.dart';

import 'local_datasource.dart';


class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<MessageResponse> getMessageResponse() async{

    String message = await SharedPrefUtil.getString(MyConstants.MESSAGE_KEY);
    if(message.isEmpty) message = "Hello world!"; //for the first time
    return MessageResponse(success: true, message: message);
  }

  @override
  void setMessageResponse(MessageResponse response) async{
    await SharedPrefUtil.writeString(MyConstants.MESSAGE_KEY, response.message);
  }

}