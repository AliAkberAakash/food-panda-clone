import 'package:flutter/material.dart';
import 'package:food_panda_clone/core/network/api_base_helper.dart';
import 'package:food_panda_clone/utils/constants.dart';

class RestService {
  final ApiBaseHelper helper;

  RestService({@required this.helper});

  //calls base url
  Future<dynamic> getMessage() {

    final header = {
      NetworkConstants.ACCEPT : "application/json"
    };

    return helper.get("", header);
  }

}