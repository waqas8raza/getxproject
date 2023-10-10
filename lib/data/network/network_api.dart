// ignore_for_file: dead_code_on_catch_subtype

import 'dart:convert';
import 'dart:io';

import 'package:getxproject/data/exception.dart';
import 'package:getxproject/data/network/base_api.dart';
import 'package:http/http.dart' as http;

class NetworkAPi extends BaseApiclass {
  @override
  Future getapi(String url) async {
    dynamic responsejson;
    try {
      var response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responsejson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on SocketException {
      throw InvalidurlException();
    }
    return responsejson;
  }
  Future postapi(var data, String url) async {
    dynamic responsejson;
    try {
      var response =
          await http.post(Uri.parse(url),body: jsonEncode(data)).timeout(const Duration(seconds: 10));
      responsejson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on SocketException {
      throw InvalidurlException();
    }
    return responsejson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 400:
        throw InvalidurlException();
    }
  }
}
