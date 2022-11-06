import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/Controller..dart';
import 'routes.dart';



void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'To Do List ',
      initialRoute: '/home',
      getPages: appRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
