import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnc2/screens/signup_with_email_screen.dart';

class DialogSignUp extends StatelessWidget {
  const DialogSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 290,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 64, 64)),
                ),
                // InkWell(
                //   child: const Text('X'),
                //   onTap: () {
                //     Navigator.of(context).pop();
                //   },
                // )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpCreenWithEmail(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color.fromARGB(255, 255, 64, 64),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign up with Email",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.mail, color: Colors.white)
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Sign up with Google",
                        style: TextStyle(color: Colors.white)),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/google.svg', // Đường dẫn tới file SVG
                      width: 24, // Kích thước của SVG
                      height: 24,
                      color: Colors.white, // Màu sắc của SVG (nếu cần thiết)
                    ),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55),
                    backgroundColor: const Color.fromARGB(255, 52, 48, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sign up with Facebook",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.facebook, color: Colors.white)
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
