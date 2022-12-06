import 'package:flutter/material.dart';

import 'Last_Page.dart';
import 'MainPage.dart';
import 'Page_1.dart';
import 'Page_2.dart';
import 'Page_3.dart';
import 'Page_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page_1(),
    );
  }
}