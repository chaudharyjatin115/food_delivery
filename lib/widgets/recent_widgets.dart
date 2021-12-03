import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/order.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
                letterSpacing: 1.2,
                fontSize: 24.0,
                fontWeight: FontWeight.w900),
          ),
        ),
        Container(
          height: 120.0,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 10.0),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders!.length,
            itemBuilder: (BuildContext context, int index) => Container(
              margin: const EdgeInsets.all(10.0),
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                      image: AssetImage(
                        currentUser.orders![index].food!.imageUrl.toString(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${currentUser.orders![index].food!.name}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${currentUser.orders![index].restaurant!.name}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${currentUser.orders![index].date}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16.0),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    width: 48.0,
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
