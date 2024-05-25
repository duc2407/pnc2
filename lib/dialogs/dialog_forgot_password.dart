import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pnc2/screens/home_screen.dart';

class DialogForgotPassword extends StatefulWidget {
  const DialogForgotPassword({super.key});

  @override
  State<DialogForgotPassword> createState() => _DialogForgotPasswordState();
}

class _DialogForgotPasswordState extends State<DialogForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 64, 64)),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  color: Colors.black, // Màu của icon
                  iconSize: 24.0, // Kích thước của icon
                  onPressed: () {
                    // Hành động khi nút được nhấn
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const Text(
                'Please enter your registered email. We will send the password to your mail...'),
            Container(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color.fromARGB(255, 255, 64, 64),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sent PassWord",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.password, color: Colors.white)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
