import 'dart:async';

import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
  Timer(Duration(seconds: 5),(){Navigator.pushReplacementNamed(context, '/home');});
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Padding(
             padding: const EdgeInsets.only(right: 10),
             child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 360,
                    decoration: const BoxDecoration(
                      color: Colors.purpleAccent,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/img/G.png'),
                      ),
                    ),

                  child: const Padding(
                    padding:  EdgeInsets.only(top: 90 , left: 25),
                    child: Text('Gill Furniture',style: TextStyle(
                      color: Colors.white,fontSize: 25,
                    ),),
                  ),
             ),
           ),

          ],
        ),
      ),
    );
  }
}
