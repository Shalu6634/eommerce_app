import 'package:eommerce_app/Home/List.dart';
import 'package:eommerce_app/utils/global_var.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart List',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            cartList.length,
            (index) => cart(
              img: cartList[index]['img'],
              price: productList[index]['price'],
              name: productList[index]['name'],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         for(int i=0; i<cartList.length; i++)
         {
             qty = (qty + cartList[i]['member'].toInt());
             amount=amount+cartList[i]['price']*cartList[i]['member'];
         }
         total=(amount*18/100)+amount;
            Navigator.of(context).pushNamed('/check');
        },
        child: Icon(Icons.add_shopping_cart_outlined),
      ),

    );
  }

  Column cart({required String img, required int price, required String name}) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 130,
              width: 380,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffd6f0f5),
              ),
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 160,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffE1F7F5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(img),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            GestureDetector(
                                onTap: () {
                                  cartList.removeAt(selectedIndex);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.delete),
                                )),
                          ],
                        ),
                        Text(
                          price.toString() + '/-',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
