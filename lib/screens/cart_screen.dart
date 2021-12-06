// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/widgets/checkout_container.dart';

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
          itemBuilder: (BuildContext context, int index) {
            if (index < currentUser.cart!.length) {
              return Container(
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
                                    height: 8.0,
                                  ),
                                  Text(
                                    '${currentUser.orders![index].restaurant!.name}',
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor,
                                        border: Border.all(
                                            width: 0.8, color: Colors.black54)),
                                    height: 20.0,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '+',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          currentUser.orders![index].quantity!
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          '-',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600),
                                        ),
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
                    Text(
                      '\$${currentUser.orders![index].food!.price! * currentUser.orders![index].quantity!.toInt()}',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Estimated Delivery Time :',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Total Cost ',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '25',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 80.0,
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1.0,
              color: Colors.grey,
            );
          },
          itemCount: currentUser.cart!.length),
      bottomSheet: checkOutContainer(),
    );
  }
}
