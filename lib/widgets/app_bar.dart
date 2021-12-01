import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';

// ignore: non_constant_identifier_names
AppBar MyAppBar() {
  return AppBar(
    centerTitle: true,
    title: const Text('Grocer'),
    leading: IconButton(
      onPressed: () {},
      icon: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/Avatar-Maker.png'),
      ),
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
  );
}
