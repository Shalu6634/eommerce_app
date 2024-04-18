
import 'package:flutter/material.dart';
import 'List.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.notifications_active),
            ),
          ],
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'Stylish \n Furniture',
              style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 5)
                          ],
                          border: Border.all(color: Colors.white12),
                          borderRadius: BorderRadius.circular(50)),
                      child: const ListTile(
                        title: Text(
                          'Search your furniture',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        leading: Icon(
                          Icons.search,
                          size: 28,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 5)
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Center(
                          child: Icon(
                            Icons.qr_code,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 155, top: 30),
                  child: Text(
                    'Stylish Furniture ',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: List.generate(
                    productList.length,
                    (index) => box1(
                      img: productList[index]['img'],
                      img1:proList[index]['img1'],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row box1({required String img,required String img1}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 250,
                width: 195,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 2)
                    ],
                    color: Colors.white12,

                    image: DecorationImage(
                      fit: BoxFit.cover
                    ,image: AssetImage(img),),),
                child:  Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 100,
                  margin: EdgeInsets.only(top: 140),
                  color: Colors.black54,
              ),
            ),
            ),

          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2,bottom: 20),
              child: Container(
                height: 250,
                width: 190,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 2)
                  ],
                  color: Colors.white12,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img1),
                  ),
                ),
                child:  Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 100,
                  margin: EdgeInsets.only(top: 140),
                  color: Colors.black54,
                ),
              ),

            ),

          ],
        ),
      ],
    );
  }
}
