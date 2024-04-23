import 'package:eommerce_app/utils/global_var.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              qty = 0;
              amount = 0;
              total = 0;
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        title: Text(
          'Check Out',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        height: 150,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.purpleAccent, borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12,blurRadius: 4,spreadRadius: 1)
        ]),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Total product :',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Text(
                          '$qty',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Amount  :',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text(
                          '$amount',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Gst   :',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Text(
                          '18%',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Amount  :',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          '$total',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
