import 'package:flutter/material.dart';
import 'package:weatherapp/ApiDara/HttpRequest.dart';
import 'package:weatherapp/ApiDara/Model.dart';
import 'package:provider/provider.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> modelList = [];
  late UserModel userModel;

  getCategory() async {
    modelList = (await CustomHttpRequest().getUsers())!;
    notifyListeners();
  }
}
