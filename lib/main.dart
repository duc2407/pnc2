import 'package:flutter/material.dart';
import 'package:pnc2/screens/home_screen.dart';
import 'package:pnc2/screens/login_screen.dart';
import 'package:pnc2/screens/onboarding_sceen.dart';
import 'package:pnc2/screens/signup_with_email_screen.dart';
import 'package:pnc2/screens/splash_screen.dart';
import 'package:pnc2/viewModels/mainViewModels.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MainViewModel()),
        ],
        child: MaterialApp(
          title: "ECommerce Sopping",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: const Color.fromARGB(255, 255, 17, 0)),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/onboarding': (context) => OnboardingScreen(),
            '/login': (context) => const LoginScreen(),
            '/sign_up_with_email': (context) => const SignUpCreenWithEmail(),
            '/home': (context) => const HomeScreen(),
          },
        ));
  }
}
