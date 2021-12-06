import 'package:flutter/material.dart';
import 'package:food_delivery/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery app',
      theme: ThemeData(
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[900],
        brightness: Brightness.dark,

        /* dark theme settings */
      ),
      themeMode: ThemeMode.system,
      home: const LoginScreen(),
    );
  }
}
