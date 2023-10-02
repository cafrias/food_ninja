import 'package:flutter/material.dart';
import 'package:food_ninja/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      home: const Scaffold(
        body: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}