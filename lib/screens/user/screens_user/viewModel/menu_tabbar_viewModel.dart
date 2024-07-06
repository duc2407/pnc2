import 'package:flutter/material.dart';
import 'package:pnc2/screens/user/screens_user/about_clinic_branch.dart';
import 'package:pnc2/screens/user/screens_user/about_doctor_screen.dart';
import 'package:pnc2/screens/user/screens_user/history_screen.dart';
import 'package:pnc2/screens/user/screens_user/home_screen.dart';
import 'package:pnc2/screens/user/screens_user/notice_screen.dart';
import 'package:pnc2/screens/user/screens_user/profile_screen.dart';
import 'package:pnc2/screens/user/screens_user/store_screen.dart';

class MenuTabbarViewModel with ChangeNotifier {
  int currentTab = 0;
  Widget currentScreen = const HomeScreen();

  final int _notificationCount = 1;
  final int _historyCount = 1;
  int get notificationCount => _notificationCount;
  int get historyCount => _historyCount;

  runNextScreenHome() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentTab = 0;
      currentScreen = const HomeScreen();
      notifyListeners();
    });
  }

  runNextScreenHistory() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentTab = 1;
      currentScreen = const HistoryScreen();
      notifyListeners();
    });
  }

  runNextScreenStoreScreen() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentTab = 2;
      currentScreen = const StoreScreen();
      notifyListeners();
    });
  }

  runNextScreenNotice() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentTab = 3;
      currentScreen = const NoticeScreen();
      notifyListeners();
    });
  }

  runNextScreenProfile() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      currentTab = 4;
      currentScreen = const ProfileScreen();
      notifyListeners();
    });
  }

  runNextScreenAboutDoctor(BuildContext context, String doctorId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutDoctorScreen(doctorId: doctorId),
      ),
    );
    notifyListeners();
  }

  runNextScreenAboutClinicBranch(BuildContext context, String clinicId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutClinicBranch(clinicId: clinicId),
      ),
    );
    notifyListeners();
  }
}
