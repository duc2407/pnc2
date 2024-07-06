import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pnc2/common/api/services_api.dart';

class SignupWithEmailViewModel with ChangeNotifier {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPasswordLast = TextEditingController();

  Dio dio = Dio();
  ApiService apiService = ApiService(Dio());

  bool isEmailValid = true;
  bool obscureText = true;
  void viewPassword() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void checkEmail(String value) {
    isEmailValid = isEmail(value);
    notifyListeners();
  }

  bool isEmail(String? email) {
    final RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return regex.hasMatch(email ?? '');
  }

  bool isPasswordValid = true;
  bool isPasswordStrong(String? password) {
    if (password == null || password.isEmpty) return false;

    // Kiểm tra độ dài của mật khẩu
    if (password.length < 6) return false;

    // Kiểm tra xem mật khẩu có chứa ít nhất một chữ cái và một số không
    bool hasLetter = false;
    bool hasDigit = false;

    for (int i = 0; i < password.length; i++) {
      int codeUnit = password.codeUnitAt(i);
      if (isLetter(codeUnit)) {
        hasLetter = true;
      } else if (isDigit(codeUnit)) {
        hasDigit = true;
      }
      notifyListeners();
    }

    return hasLetter && hasDigit;
  }

  bool isLetter(int codeUnit) {
    notifyListeners();
    return (codeUnit >= 65 && codeUnit <= 90) ||
        (codeUnit >= 97 && codeUnit <= 122);
  }

  bool isDigit(int codeUnit) {
    notifyListeners();
    return codeUnit >= 48 && codeUnit <= 57;
  }

  bool resultCheckPassword = true;
  bool checkPasswordMatch(String passwordLast) {
    bool passwordsMatch = controllerPassword.text == passwordLast;
    resultCheckPassword = passwordsMatch;
    notifyListeners();
    return passwordsMatch;
  }

  int checkSignUp = 1;
  String message = '';
  void signUp() async {
    Map<String, dynamic> data = {
      'email': controllerEmail.text,
      'password': controllerPasswordLast.text,
      'roleId': 3
    };
    if (controllerPasswordLast != '') {
      final response = await apiService.register(data);
      message = response.data['message'].toString();

      if (response.data['status'] == 200) {
        controllerEmail.text = '';
        controllerPassword.text = '';
        controllerPasswordLast.text = '';
        checkSignUp = 2;
      } else if (response.data['status'] == 201) {
        checkSignUp = 1;
      }
      notifyListeners();
    } else {}
  }
}
