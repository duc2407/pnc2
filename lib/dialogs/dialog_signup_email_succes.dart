import 'package:flutter/material.dart';
import 'package:pnc2/screens/login_screen.dart';

class DialogSignUpEmailSuccess extends StatefulWidget {
  const DialogSignUpEmailSuccess({super.key});

  @override
  State<DialogSignUpEmailSuccess> createState() =>
      _DialogSignUpEmailSuccessState();
}

class _DialogSignUpEmailSuccessState extends State<DialogSignUpEmailSuccess> {
  final bool _checkRequied = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: Colors.white,
        child: Container(
          height: 250,
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Icon(
                  _checkRequied ? Icons.check_circle : Icons.warning,
                  size: 50,
                  color: _checkRequied ? Colors.green : Colors.red,
                ),
                Text(_checkRequied
                    ? "Submit your registration request successfully, please check the email for the verification code for your first login."
                    : "An error has occurred, please try again later"),
                ElevatedButton(
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
                    child: const Text("Back to Login",
                        style: TextStyle(color: Colors.white))),
                const SizedBox(
                  height: 5,
                ),
              ]),
        ));
  }
}
