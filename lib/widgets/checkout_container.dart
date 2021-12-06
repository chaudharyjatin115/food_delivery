import 'package:flutter/material.dart';

// ignore: camel_case_types
class checkOutContainer extends StatelessWidget {
  const checkOutContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
          onPressed: () {},
          child: const Text(
            'CHECKOUT',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          )),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Colors.black26, offset: Offset(0, -1), blurRadius: 6.0),
      ], color: Theme.of(context).primaryColor),
      height: 70.0,
      width: MediaQuery.of(context).size.width,
    );
  }
}
// 1273214856 id