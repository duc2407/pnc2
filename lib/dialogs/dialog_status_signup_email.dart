import 'package:flutter/material.dart';
import 'package:pnc2/screens/login_screen.dart';
import 'package:pnc2/viewModels/signup_with_email_screen_viewModels.dart';
import 'package:provider/provider.dart';

class DialogStatusSignUpEmail extends StatelessWidget {
  final bool checkRequied;
  final String? submitSucces;
  final String? submitError;

  const DialogStatusSignUpEmail(
      {super.key,
      required this.checkRequied,
      this.submitSucces,
      this.submitError});

  // final bool _checkRequied = false;

  @override
  Widget build(BuildContext context) {
    SignupWithEmailViewModel viewModel =
        Provider.of<SignupWithEmailViewModel>(context);
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
                  checkRequied ? Icons.check_circle : Icons.warning,
                  size: 50,
                  color: checkRequied ? Colors.green : Colors.red,
                ),
                Text(checkRequied
                    ? submitSucces ?? 'OKE'
                    : submitError ?? 'ERR'),
                ElevatedButton(
                    onPressed: () {
                      checkRequied
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()))
                          : Navigator.of(context).pop();
                      viewModel.notifyListeners();
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(55),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    child: Text(
                        checkRequied ? 'Đăng nhập' : 'Vui lòng nhập lại',
                        style: const TextStyle(color: Colors.white))),
                const SizedBox(
                  height: 5,
                ),
              ]),
        ));
  }
}
