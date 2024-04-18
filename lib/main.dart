import 'package:flutter/material.dart';
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
        '/' :(context) =>   HomePage(),
        '/home':(context)=>Splashscreen(),

      },
    );
  }
}