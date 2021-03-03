import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kanye_app/model/api_model.dart';

class ApiController {
  static Future<ApiModel> getQuote() async {
    var currentQuote = 'tap for a quote';
    final String url = 'https://api.kanye.rest/';
    var response = await http.get(url);
    Map mapResponse = json.decode(response.body);
  }
}
