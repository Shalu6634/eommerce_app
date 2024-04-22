import 'package:flutter/material.dart';
import 'Home/Cartscreen.dart';
import 'Home/checkOutScreen/checkout.dart';
import 'Home/detailsScreen.dart';
import 'Home/homePage.dart';
import 'Home/splashscreen.dart';
void main()
{
  runApp(EcommerceApp());

}
class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) =>HomePage() ,
        '/check':(context)=>CheckOutScreen(),
        '/home':(context)=>HomePage(),
        '/cart':(context)=>CartScreen(),
        '/detail':(context)=>DetailsScreen(),
        '/splash':(context)=> Splashscreen(),
      },
    );
  }
}