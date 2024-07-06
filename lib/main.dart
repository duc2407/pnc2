import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pnc2/common/utils/app_local_language.dart';
import 'package:pnc2/screens/splash_screen.dart';
import 'package:pnc2/screens/user/menu_tabbar.dart';
import 'package:pnc2/screens/login_screen.dart';
import 'package:pnc2/screens/onboarding_sceen.dart';
import 'package:pnc2/screens/signup_with_email_screen.dart';
import 'package:pnc2/screens/user/screens_user/viewModel/menu_tabbar_viewModel.dart';
import 'package:pnc2/viewModels/mainViewModels.dart';
import 'package:pnc2/viewModels/signup_with_email_screen_viewModels.dart';
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
        ChangeNotifierProvider(create: (_) => LanguageManager()),
        ChangeNotifierProvider(create: (_) => MenuTabbarViewModel()),
        ChangeNotifierProvider(create: (_) => SignupWithEmailViewModel()),
      ],
      child: Consumer<LanguageManager>(
        builder: (context, languageManager, child) {
          return MaterialApp(
            title: "ECommerce Shopping",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: const Color.fromARGB(255, 255, 17, 0),
              textTheme: GoogleFonts.interTextTheme(),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const SplashScreen(),
              '/onboarding': (context) => const OnboardingScreen(),
              '/login': (context) => const LoginScreen(),
              '/sign_up_with_email': (context) => const SignUpCreenWithEmail(),
              '/home': (context) => const MenuTabbar(),
            },
          );
        },
      ),
    );
  }
}
