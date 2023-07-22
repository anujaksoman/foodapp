import 'package:flutter/material.dart';
import 'package:food_project/UI/Homepage.dart';
import 'package:food_project/UI/Homepage_ui.dart';
import 'package:food_project/UI/food_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FoodDetails(),
    );
  }
}


