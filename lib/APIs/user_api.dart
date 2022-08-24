import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
class UsersApi {
  getUserData() async {
    var data = '';
    try {
      var response = await Dio(
        BaseOptions(
          headers: {
            "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJmNmI1OTM4MS1jMjY3LTRmNDctYjdkOC02YzU5ZDAxOTk0YmIiLCJpYXQiOjE2NjEzMzc1NDYsImV4cCI6MTY2MTUxMDM0Nn0.vrw3n_PkeagTiJKniJNB7Swg1kahXlWq8CV7ji1cvLM"
          },
        ),
      ).get('https://lavie.orangedigitalcenteregypt.com/api/v1/user/me').then((value) {
        if(value.statusCode == 200){
          data = value.data['data'];
        }
      },);
      print(data);
      return data;
    } catch (e) {
      if(e is DioError){
        print(e.response);
      }
      print(e);
    }
  }
}