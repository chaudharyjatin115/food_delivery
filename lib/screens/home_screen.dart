import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/screens/cart_screen.dart';
import 'package:food_delivery/widgets/recent_widgets.dart';
import 'package:food_delivery/widgets/restaurant_list.dart';
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
      appBar: AppBar(
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CartScreen()));
            },
            child: Text(
              'Cart(${currentUser.cart!.length})',
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SearchBar(),
          const RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                      letterSpacing: 1.2,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              RestaurentBuilder()
            ],
          )
        ],
      ),
    );
  }
}
