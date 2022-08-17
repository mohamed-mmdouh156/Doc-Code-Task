import 'package:flutter/material.dart';
import 'package:home_screen_task/presentation/theme_manager.dart';
import 'package:home_screen_task/screens/home_screen.dart';

class MyApp extends StatefulWidget {

  MyApp._internal();
  static final MyApp _instance = MyApp._internal();
  factory MyApp () => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: const HomeScreen(),
    );
  }
}
