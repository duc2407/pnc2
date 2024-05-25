import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pnc2/screens/home_screen.dart';
import 'package:pnc2/screens/onboarding_sceen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/onboarding'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/images/img01.png"),
                  fit: BoxFit.cover,
                  opacity: 0.3),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_cart,
                    size: 200, color: Color.fromARGB(255, 235, 149, 143)),
                Text("DUCK SHOP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic))
              ],
            )));
  }
}
