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
                Row(
                  children: [
                    Column(
                      children: List.generate(
                        4,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pushNamed('/detail',
                                  arguments: productList[index]);
                              selectedIndex = index;
                            });
                          },
                          child: box1(
                            img: productList[index]['img'],
                            price: productList[index]['price'],
                            name: productList[index]['name'],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: List.generate(
                        4,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.of(context).pushNamed('/detail',
                                  arguments: proList[index]);
                              selectedIndex = index;
                            });
                          },
                          child: box1(
                            img: proList[index]['img'],
                            price: proList[index]['price'],
                            name: proList[index]['name'],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row box1({required String img, required int price, required String name}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: 260,
                width: 195,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 1, blurRadius: 2)
                  ],
                  color: Colors.white12,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(img),
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(right: 10,left: 10),
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 60,
                    margin: EdgeInsets.only(top: 150),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white12,),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black54,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 30,bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text(
                              name,
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${price}' + '/-',
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 2, bottom: 20),
        //       child: Container(
        //         height: 250,
        //         width: 190,
        //         margin: EdgeInsets.all(5),
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.black, spreadRadius: 1, blurRadius: 2)
        //           ],
        //           color: Colors.white12,
        //           image: DecorationImage(
        //             fit: BoxFit.cover,
        //             image: AssetImage(img),
        //           ),
        //         ),
        //         child: Container(
        //           alignment: Alignment.center,
        //           height: 20,
        //           width: 70,
        //           margin: EdgeInsets.only(top: 140),
        //           decoration: BoxDecoration(
        //               color: Colors.black54,
        //               borderRadius: BorderRadius.circular(23)),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
