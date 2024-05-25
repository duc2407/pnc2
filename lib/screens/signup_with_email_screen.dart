import 'package:flutter/material.dart';
import 'package:pnc2/dialogs/dialog_signup_email_succes.dart';

class SignUpCreenWithEmail extends StatefulWidget {
  const SignUpCreenWithEmail({super.key});

  @override
  State<SignUpCreenWithEmail> createState() => _SignUpCreenWithEmailState();
}

class _SignUpCreenWithEmailState extends State<SignUpCreenWithEmail> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sign up with Email",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: const OutlineInputBorder(),
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
                const SizedBox(height: 10),
                TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: const OutlineInputBorder(),
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
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              const DialogSignUpEmailSuccess());
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(55),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: const Text("Sign Up",
                        style: TextStyle(color: Colors.white))),
              ],
            )),
      ),
    );
  }
}
