import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weatherapp/ApiDara/HttpRequest.dart';
import 'package:weatherapp/ApiDara/Model.dart';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  void CustomHttpRequestc() {
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

  late List<UserModel>? _userModel = [];
  UserModel? alluser;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await CustomHttpRequest().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_userModel![2].name.toString()),
      ),
    );
  }
}
