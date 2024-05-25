import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pnc2/screens/home_screen.dart';
import 'package:pnc2/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.zero);
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Well Come",
            body:
                "Welcome to Duck Shop, we are a unit specializing in providing all items worldwide, multinational shipping. Thank you for trusting and using our services...",
            image: Image.asset("assets/images/app1.png", width: 200),
            decoration: pageDecoration),
        PageViewModel(
            title: "Shoping Online",
            body: "Online Shopping - Enjoy Convenience and Save Time",
            image: Image.asset("assets/images/app2.png", width: 200),
            decoration: pageDecoration),
        PageViewModel(
            title: "Start Shopping Now",
            body: "WellCome...",
            image: Image.asset("assets/images/app3.png", width: 200),
            decoration: pageDecoration,
            footer: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text("Let's Shop now",
                      style: TextStyle(color: Colors.white))),
            )),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: false,
      back: const Text('Back',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      next: const Text('Next',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      // done: const Text('Done',
      //     style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      // skip: const Text('Skip',
      //     style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          activeColor: Colors.red,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
