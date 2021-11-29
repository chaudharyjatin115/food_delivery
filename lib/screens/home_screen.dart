import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';

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
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              'Cart(${currentUser.cart!.length})',
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.clear),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(width: 0.8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      width: 0.8, color: Theme.of(context).primaryColor),
                ),
                hintText: 'Search for restaurant and dishes',
              ),
            ),
            padding: const EdgeInsets.all(20.0),
          )
        ],
      ),
    );
  }
}
