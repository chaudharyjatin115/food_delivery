import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_bar.dart';
import 'package:food_delivery/widgets/recent_widgets.dart';
import 'package:food_delivery/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: <Widget>[SearchBar(), const RecentOrders()],
      ),
    );
  }
}
