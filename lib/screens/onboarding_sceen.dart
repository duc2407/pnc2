import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pnc2/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  String selectedLanguage = 'Tiếng Việt';
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
          title: "Chào mừng bạn !!!",
          body:
              "Cảm ơn bạn đã tin tưởng ISO, nơi khám bệnh tận tâm, với đội ngũ y bác sĩ có tay nghề đầu ngành trên cả nước 'ISO BOOKING APP'",
          image: Image.asset("assets/images/bg_one_app.png", width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: " Đặt lịch khám - Mua thuốc Online",
            body:
                "Đặt lịch khám bệnh tại nhà, tại bệnh viện online. Mua thuốc Online - Mua thuốc theo đơn thuốc đã kê tại nhà, theo đúng chỉ định chất lượng",
            image: Image.asset("assets/images/app2.png", width: 200),
            decoration: pageDecoration),
        PageViewModel(
          title: "Bắt đầu ngay nào - Chào mừng bạn!!!",
          body: "Chúc bạn sức khỏe!!!",
          image: Image.asset("assets/images/two_app.png", width: 200),
          decoration: pageDecoration,
          // footer: Padding(
          //   padding: const EdgeInsets.only(left: 15, right: 15),
          //   child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => const LoginScreen()));
          //       },
          //       style: ElevatedButton.styleFrom(
          //           minimumSize: const Size.fromHeight(55),
          //           backgroundColor: Colors.red,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(8))),
          //       child: const Text("Let's Shop now",
          //           style: TextStyle(color: Colors.white))),
          // )
        ),
      ],
      showSkipButton: false,
      showDoneButton: true,
      showBackButton: false,
      back: const Text('Quay lại',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      next: const Text('Tiếp tục',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      done: const Text('Xong',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      // skip: const Text('Bỏ qua',
      //     style: TextStyle(fontWeight: FontWeight.w600, color: Colors.red)),
      onDone: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
      // onSkip: () {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => const LoginScreen()));
      // },
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
