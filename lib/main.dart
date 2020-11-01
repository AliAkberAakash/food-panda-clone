import 'package:flutter/material.dart';
import 'package:food_panda_clone/ui/features/home/home_page.dart';
import 'package:food_panda_clone/utils/my_colors.dart';

import 'di/dependency_injection.dart';


void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primaryColor: primary,
        primaryColorDark: primary_dark,
        accentColor: accent,

        // Define the default font family.
        fontFamily: 'Georgia',

      ),
      home: HomePage(),
    );
  }
}
