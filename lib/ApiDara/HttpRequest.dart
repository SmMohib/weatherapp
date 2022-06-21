import 'dart:developer';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:weatherapp/ApiDara/Model.dart';

class CustomHttpRequest {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      var response = await http.get(url);
      headers:
      await CustomHttpRequest();

      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
