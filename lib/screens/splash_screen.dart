import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  image: AssetImage("assets/images/bg_one_app.png"),
                  fit: BoxFit.cover,
                  opacity: 0.3),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/icon_doctor.svg',
                  width: 200,
                ),
                const Text("Khám bệnh ISO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                const Text(
                  'Bản quyền bởi ©Copyright by Duckit247',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.italic),
                ),
              ],
            )));
  }
}
