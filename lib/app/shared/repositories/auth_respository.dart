import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository({required this.dio});

  ///Do request authentication and receives token
  Future<String?> doAuth(String username, String password) async {
    try {
      //Login test to redirect to home page
      if (username == "teste") return "passed";

      //Uncomment below code when you going to work with real api
      //and remove above code

      // final response = await dio.post("/auth", data: {
      //   'username': username,
      //   'password': password,
      // });

      // return json.decode(response.data);
    } catch (e) {
      debugPrint("FlutterLog/doAuth - request failed.");
    }

    return null;
  }
}
