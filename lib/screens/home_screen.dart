import 'package:flutter/material.dart';
import 'package:food_delivery/models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Food Delivery'),
          leading: const Icon(
            Icons.account_circle,
          ),
          actions: <Widget>[TextButton(onPressed: () {}, child: Text)]),
    );
  }
}
