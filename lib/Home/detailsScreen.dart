import 'package:flutter/material.dart';

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
          actions: const [
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
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                            image: AssetImage(data['img']))),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 330, left: 330),
                      child: Icon(
                        Icons.favorite_border,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 260),
                  child: Container(
                    alignment: Alignment.center,
                    height: 95,
                    width: 550,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
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
                          'Add to Cart',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
