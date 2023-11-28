import 'package:fp_prak_mobile/Pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'Models/feedback_model.dart';


void main() async {
  await Hive.initFlutter();

  // Register the Hive adapters here
  Hive.registerAdapter(FeedbackModelAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}