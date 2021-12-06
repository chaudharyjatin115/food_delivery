import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: non_constant_identifier_names

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0.8)),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {},
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0.8, color: Colors.red)),
            hintText: 'Search for restaurant and food'),
      ),
    );
  }
}
