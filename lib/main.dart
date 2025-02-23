import 'package:flutter/material.dart';
import 'views/user_list_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Repository Pattern Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: UserListView(),
    );
  }
}
