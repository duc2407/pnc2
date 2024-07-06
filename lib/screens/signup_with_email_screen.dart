import 'package:flutter/material.dart';
import 'package:pnc2/dialogs/dialog_status_signup_email.dart';
import 'package:pnc2/viewModels/signup_with_email_screen_viewModels.dart';
import 'package:provider/provider.dart';

class SignUpCreenWithEmail extends StatelessWidget {
  const SignUpCreenWithEmail({super.key});
  @override
  Widget build(BuildContext context) {
    SignupWithEmailViewModel viewModel =
        Provider.of<SignupWithEmailViewModel>(context);
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
                  controller: viewModel.controllerEmail,
                  onChanged: (value) {
                    viewModel.checkEmail(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            viewModel.isEmailValid ? Colors.grey : Colors.red,
                      ),
                    ),
                    errorText:
                        viewModel.isEmailValid ? null : 'Không phải email',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                    onChanged: (value) {
                      // Gọi hàm kiểm tra mật khẩu ở đây
                      viewModel.isPasswordValid =
                          viewModel.isPasswordStrong(value);
                      viewModel
                          // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                          .notifyListeners(); // Thông báo sự thay đổi đến người nghe
                    },
                    controller: viewModel.controllerPassword,
                    obscureText: viewModel.obscureText,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: const OutlineInputBorder(),
                        errorText: viewModel.isPasswordValid
                            ? null
                            : 'Mật khẩu cần lớn hơn 6 kí tự, không chứa kí hiệu đặc biệt.',
                        suffixIcon: IconButton(
                            icon: Icon(
                              viewModel.obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              viewModel.viewPassword();
                            }))),
                const SizedBox(height: 10),
                TextFormField(
                    onChanged: (value) {
                      viewModel.checkPasswordMatch(value);
                    },
                    controller: viewModel.controllerPasswordLast,
                    obscureText: viewModel.obscureText,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: const OutlineInputBorder(),
                        errorText: viewModel.resultCheckPassword
                            ? null
                            : 'Mật khẩu không khớp, vui lòng kiểm tra lại',
                        suffixIcon: IconButton(
                            icon: Icon(
                              viewModel.obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              viewModel.viewPassword();
                            }))),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      viewModel.signUp();

                      if (viewModel.checkSignUp == 2) {
                        showDialog(
                            context: context,
                            builder: (context) => DialogStatusSignUpEmail(
                                checkRequied: true,
                                submitSucces: viewModel.message));
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) => DialogStatusSignUpEmail(
                                checkRequied: false,
                                submitError: viewModel.message));
                      }
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
