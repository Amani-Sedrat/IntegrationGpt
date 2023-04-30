import 'package:aichatbot/screens/ChatScreen.dart';
import 'package:aichatbot/screens/GoodBye.dart';
import 'package:flutter/material.dart';
import './screens/FirstScreen.dart';
import './screens/AddUsername.dart';
import './screens/ChatScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstScreen());
  }
}
