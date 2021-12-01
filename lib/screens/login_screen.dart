import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Text(
              'Grocer',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w500, color: Colors.red),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Center(
            child: SizedBox(
              width: 150,
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }),
            ),
          ),
          SizedBox(
            width: 150,
            child: TextButton(
                child: const Text(
                  'SignUp',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue))),
          )
        ]));
  }
}
