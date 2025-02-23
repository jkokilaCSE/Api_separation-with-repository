import 'package:flutter/material.dart';
import 'views/user_list_view.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

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

//logger example:
class LogService {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2, // Shows how many stack trace lines
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  static void info(String message) {
    _logger.i(message);
  }

  static void debug(String message) {
    _logger.d(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void error(String message) {
    _logger.e(message);
  }
}
