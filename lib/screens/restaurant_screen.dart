import 'package:flutter/material.dart';

import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/rating.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;
  const RestaurantScreen({Key? key, required this.restaurant})
      : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Hero(
                tag: widget.restaurant,
                child: Image(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.restaurant.imageUrl.toString()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                      // ignore: prefer_const_constructors
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      iconSize: 35.0,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${widget.restaurant.name}',
                      style: const TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4.0,
                ),
                RatingStars(widget.restaurant.rating!.toInt()),
                const SizedBox(
                  height: 4.0,
                ),
                const Text(
                  '0.2 miles away',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  '${widget.restaurant.address}',
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Reviews',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          backgroundColor: Theme.of(context).primaryColor,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 30.0)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Contact',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          backgroundColor: Theme.of(context).primaryColor,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 30.0)),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Center(
            child: Text(
              'Menu',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2),
            ),
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(10.0),
              crossAxisCount: 2,
              children: List.generate(
                widget.restaurant.menu!.length,
                (index) => Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  '${widget.restaurant.menu![index].imageUrl}')),
                        ),
                        height: 175,
                        width: 175,
                      ),
                      Container(
                        height: 175,
                        width: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: const [
                                  0.1,
                                  0.4,
                                  0.6,
                                  0.9
                                ],
                                colors: [
                                  Colors.black.withOpacity(0.3),
                                  Colors.black87.withOpacity(0.3),
                                  Colors.black54.withOpacity(0.3),
                                  Colors.black38.withOpacity(0.3)
                                ])),
                      ),
                      Positioned(
                        bottom: 65.0,
                        child: Column(
                          children: [
                            Text(
                              widget.restaurant.menu![index].name!.toString(),
                              style: const TextStyle(
                                  letterSpacing: 1.2,
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\$${widget.restaurant.menu![index].price}',
                              style: const TextStyle(
                                  letterSpacing: 1.2,
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: IconButton(
                            iconSize: 30.0,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
