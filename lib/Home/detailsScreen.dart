import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(
              Icons.share,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 350,
                    width: 350,
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
                      boxShadow: const [
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
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
                      padding:  EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.refresh,size: 30,color: Colors.purpleAccent,),
                          Text('   14 Days \n  returnable',style: TextStyle(
                            color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold
                          ),),

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
                    padding:  EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.delivery_dining,size: 30,color: Colors.purpleAccent,),
                        Text('   free \n Delivery',style: TextStyle(
                            color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold
                        ),),

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
                    padding:  EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.handshake,size: 30,color: Colors.purpleAccent,),
                        Text('  Secure \n Transaction',style: TextStyle(
                            color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold
                        ),),

                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
