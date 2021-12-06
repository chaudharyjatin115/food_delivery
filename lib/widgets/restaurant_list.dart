import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/screens/restaurant_screen.dart';
import 'package:food_delivery/widgets/rating.dart';

class RestaurentBuilder extends StatelessWidget {
  const RestaurentBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> restaurantList = [];
    // ignore: non_constant_identifier_names
    for (Restaurant restaurant in restaurants) {
      restaurantList.add(
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => RestaurantScreen(restaurant: restaurant)));
          },
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(width: 1.0, color: Colors.grey),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Hero(
                    tag: restaurant,
                    child: Image(
                      height: 130.0,
                      width: 130.0,
                      fit: BoxFit.cover,
                      image: AssetImage('${restaurant.imageUrl}'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${restaurant.name}',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      RatingStars(restaurant.rating!.toInt()),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '${restaurant.address}',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      const Text(
                        '0.2 km away',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return Column(
      children: restaurantList,
    );
  }
}
