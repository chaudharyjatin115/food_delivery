// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => Container(
                height: 170.0,
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  currentUser.cart![index].food!.imageUrl
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${currentUser.orders![index].food!.name}',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    '${currentUser.orders![index].restaurant}',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: Colors.black,
                                        border: Border.all(
                                            width: 0.8, color: Colors.black54)),
                                    width: 100.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            color:
                                                Theme.of(context).primaryColor,
                                            iconSize: 20.0,
                                            onPressed: () {},
                                            icon: Icon(Icons.add)),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        Text(currentUser.orders![index].quantity
                                            .toString()),
                                        SizedBox(
                                          height: 20.0,
                                        ),
                                        IconButton(
                                            color:
                                                Theme.of(context).primaryColor,
                                            iconSize: 20.0,
                                            onPressed: () {},
                                            icon: Icon(Icons.add)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text('\$${currentUser.orders![index].food!.price}')
                  ],
                ),
              ),
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
          itemCount: currentUser.cart!.length),
    );
  }
}
// 1273214856 id