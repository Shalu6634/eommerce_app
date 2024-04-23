import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/global_var.dart';
import 'List.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Product Details',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Icon(
                Icons.share,
                size: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 350,
                    width: 345,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(data['img']),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 300, left: 300),
                      child: Icon(
                        Icons.favorite_border,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 313),
                  child: Container(
                    alignment: Alignment.center,
                    height: 95,
                    width: 550,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow:  [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 3)
                      ],
                    ),
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 210,
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 3,
                                spreadRadius: 1)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            cartList.add(data);
                            setState(() {
                              count++;
                            });
                            print(count);
                          },
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 540),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2)
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.refresh,
                            size: 30,
                            color: Colors.black,
                          ),
                          Text(
                            '   14 Days \n  returnable',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 540),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 2, spreadRadius: 2)
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delivery_dining,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          '   free \n Delivery',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 540),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 2, spreadRadius: 2)
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.handshake,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          '  Secure \n Transaction',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 360, left: 30),
                      child: Text(
                        data['name'],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 360, left: 130),
                      child: Text(
                        '${data['price']}' + '/-',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 60,left: 20),
                  child: const Text(
                      ' This sofa seamlessly combines contemporary'
                          '\n elegance with'' unparalleled'' comfort this sofa ''\n '
                          'seamlessly  combines contemporary elegance'' \n elegance '
                          ' '' unparalleled'' comfort this'' '
                      ' seamlessly \n combines contemporary elegance',style: TextStyle(),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}