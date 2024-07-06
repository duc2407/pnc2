import 'package:flutter/material.dart';

class LanguageManager with ChangeNotifier {
  Map<String, String> _localization = vnLocalizations;
  String _languageCode = 'en';

  Map<String, String> get currentLocalization => _localization;

  void switchLanguage(String languageCode) {
    if (languageCode == 'en') {
      _localization = enLocalizations;
    } else if (languageCode == 'vn') {
      _localization = vnLocalizations;
    }
    _languageCode = languageCode;
    notifyListeners();
  }

  String get languageCode => _languageCode;
}

const Map<String, String> enLocalizations = {
  'login_shopping': 'LOGIN',
  'enter_email': 'Enter Email',
  'enter_password': 'Enter Password',
  'forgot_password': 'Forgot Password?',
  'login': 'Login',
  'continue_with': 'Continue with...',
  'login_with_google': 'Login with Google',
  'login_with_facebook': 'Login with Facebook',
  'dont_have_account': "Don't Have An Account?",
  'sign_up': 'Sign Up',
  'copyright': '©Copyright by Duckit247',
  'doctor_care': 'Doctor care',
  'home': 'Home',
  'history': 'History',
  'notice': 'Notice',
  'profile': 'Profile',
  'done_setting_dialog': 'Done'
};

const Map<String, String> vnLocalizations = {
  'login_shopping': 'ĐĂNG NHẬP',
  'enter_email': 'Nhập Email',
  'enter_password': 'Nhập Mật Khẩu',
  'forgot_password': 'Quên Mật Khẩu?',
  'login': 'Đăng Nhập',
  'continue_with': 'Tiếp tục với...',
  'login_with_google': 'Đăng Nhập bằng Google',
  'login_with_facebook': 'Đăng Nhập bằng Facebook',
  'dont_have_account': 'Chưa Có Tài Khoản?',
  'sign_up': 'Đăng Ký',
  'copyright': '©Bản quyền thuộc về @Duckit247',
  'doctor_care': 'Doctor care',
  'home': 'Home',
  'history': 'Lịch Sử',
  'notice': 'Thông Báo',
  'profile': 'Tôi',
  'done_setting_dialog': 'Xong'
};
