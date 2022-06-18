import 'package:flutter/material.dart';
import 'package:weatherapp/ApiDara/Provider.dart';
import 'package:weatherapp/ApiDara/api.dart';
import 'package:weatherapp/Weather/Weatherapi.dart';
import 'package:weatherapp/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
