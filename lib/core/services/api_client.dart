import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class ApiClient {
  //
  static Future<dynamic> get({required String url}) async {
    final http.Response response = await http.get(
      Uri.parse(
        url,
      ),
    );
    var data = await jsonDecode(response.body);
    return data;
  }
}
