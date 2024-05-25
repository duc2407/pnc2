import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pnc2/dialogs/dialog_forgot_password.dart';
import 'package:pnc2/dialogs/dialog_signup.dart';
import 'package:pnc2/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/svgs/image.svg';
    final Widget IconGoogle =
        SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: SafeArea(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/login.png",
              width: 300,
            ),
            const Text('LOGIN SHOPING',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: const OutlineInputBorder(),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    _obscureText = !_obscureText;
                                  },
                                );
                              }))),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) =>
                                  const DialogForgotPassword());
                        },
                        child: const Text("Forgot Password?",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                              // decoration: TextDecoration.underline,
                            )))
                  ]),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(55),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Text("Login",
                          style: TextStyle(color: Colors.white))),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Continue with...',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55),
                      side: const BorderSide(color: Colors.black, width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Login with Google",
                          style: TextStyle(
                              color: Colors.black), // Đổi màu chữ thành màu đen
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          'assets/svgs/google.svg', // Đường dẫn tới file SVG
                          width: 24, // Kích thước của SVG
                          height: 24,
                          color: Colors.red, // Màu sắc của SVG (nếu cần thiết)
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(55),
                          backgroundColor:
                              const Color.fromARGB(255, 52, 48, 255),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login with Facebook",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255))),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.facebook, color: Colors.white)
                        ],
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have An Account?"),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const DialogSignUp());
                          },
                          child: const Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.w600
                                  // decoration: TextDecoration.underline,
                                  )))
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('©Copyright by Duckit247',
                      style: TextStyle(color: Colors.grey, fontSize: 12))
                ],
              ),
            )
          ],
        ))));
  }
}
