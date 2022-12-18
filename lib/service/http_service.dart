import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class HttpService {
  ///Keys
  static const String tokenKey = "DICKER_DEALZ_AUTH_KEY";

  ///urls
  static const String baseURL =
      "ec2-65-2-175-57.ap-south-1.compute.amazonaws.com:8001";
  static const String version = "/api/v1";
  static const String categoriesURL = "$version/product-categories";
  static const String productsURL = "$version/product-types";
  static const String loginURl = "";

  late SharedPreferences _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();

    ///for testing
    _prefs.setString(tokenKey, "974f7eb4bef311044b8b32a678705b3253e456a4");
  }

  setToken(String token) => _prefs.setString(tokenKey, token);

  String? _getToken() => _prefs.getString(tokenKey);

  bool hasToken() => _getToken() != null;

  Future get(
      {required String url,
      Map<String, dynamic>? parameter,
      Function(Map)? onComplete,
      Function(Map)? onError}) async {
    String? token = _getToken();
    var response = await http.get(
        Uri.http(baseURL, url,
            parameter?.map((key, value) => MapEntry(key, value.toString()))),
        headers: token != null ? {"Authorization": "Token $token"} : null);

    if (kDebugMode) {
      print("status code ${response.statusCode}");
    }

    if (response.statusCode != 200) throw Exception();

    onComplete!(json.decode(response.body));
  }

  Future post(
      {required String url,
      required Map body,
      Function(Map)? onComplete,
      Function(Map)? onError}) async {
    String? token = _getToken();
    var response = await http.post(Uri.http(baseURL, url),
        headers: token != null ? {"Authorization": "Token $token"} : null,
        body: body);

    if (kDebugMode) {
      print("status code ${response.statusCode}");
    }

    if (response.statusCode != 200) throw Exception();

    onComplete!(json.decode(response.body));
  }
}
