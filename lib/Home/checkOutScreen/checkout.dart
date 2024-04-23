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
        leading: IconButton(onPressed: (){
          qty=0;
          amount=0;
          total=0;
          Navigator.of(context).pop();
        },icon:Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        title: Text(
          'Check Out',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 18),
            child: Text('Total Product = $qty',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 20),
            child: Text('Total amount = $amount',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50,top: 20),
            child: Text('Total  gst = 28%',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50,top: 20),
            child: Text('Total  = $total',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          ),

        ],
      ),
    );
  }
}
