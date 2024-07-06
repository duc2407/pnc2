import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pnc2/common/utils/app_local_language.dart';
import 'package:pnc2/screens/user/screens_user/home_screen.dart';
import 'package:pnc2/screens/user/screens_user/viewModel/menu_tabbar_viewModel.dart';
import 'package:pnc2/screens/user/screens_user/widget/button_menu_bar.dart';
import 'package:provider/provider.dart';

class MenuTabbar extends StatefulWidget {
  const MenuTabbar({super.key});

  @override
  _MenuTabbarState createState() => _MenuTabbarState();
}

class _MenuTabbarState extends State<MenuTabbar> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    final menuTabbarViewModel = Provider.of<MenuTabbarViewModel>(context);
    var languageManager = Provider.of<LanguageManager>(context);
    var localization = languageManager.currentLocalization;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Consumer<MenuTabbarViewModel>(
            builder: (context, menuTabbarViewModel, child) {
          return menuTabbarViewModel.currentScreen;
        }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff395241),
          onPressed: () {
            menuTabbarViewModel.runNextScreenStoreScreen();
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: SvgPicture.asset('assets/svgs/store.svg', color: Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ButtonMenuBar(
                            name: localization['home'].toString(),
                            iconPath: 'assets/svgs/home.svg',
                            color: menuTabbarViewModel.currentTab == 0
                                ? const Color(0xff395241)
                                : Colors.grey,
                            colorText: menuTabbarViewModel.currentTab == 0
                                ? const Color(0xff395241)
                                : Colors.grey,
                            onPress: () {
                              menuTabbarViewModel.runNextScreenHome();
                            }),
                        ButtonMenuBar(
                            name: localization['history'].toString(),
                            notificationCount: menuTabbarViewModel.historyCount,
                            iconPath: 'assets/svgs/calendar.svg',
                            color: menuTabbarViewModel.currentTab == 1
                                ? const Color(0xff395241)
                                : Colors.grey,
                            colorText: menuTabbarViewModel.currentTab == 1
                                ? const Color(0xff395241)
                                : Colors.grey,
                            onPress: () {
                              menuTabbarViewModel.runNextScreenHistory();
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonMenuBar(
                            name: localization['notice'].toString(),
                            notificationCount:
                                menuTabbarViewModel.notificationCount,
                            widthSvg: 25,
                            iconPath: 'assets/svgs/notice.svg',
                            color: menuTabbarViewModel.currentTab == 3
                                ? const Color(0xff395241)
                                : Colors.grey,
                            colorText: menuTabbarViewModel.currentTab == 3
                                ? const Color(0xff395241)
                                : Colors.grey,
                            onPress: () {
                              menuTabbarViewModel.runNextScreenNotice();
                            }),
                        ButtonMenuBar(
                            name: localization['profile'].toString(),
                            iconPath: 'assets/svgs/profile.svg',
                            color: menuTabbarViewModel.currentTab == 4
                                ? const Color(0xff395241)
                                : Colors.grey,
                            colorText: menuTabbarViewModel.currentTab == 4
                                ? const Color(0xff395241)
                                : Colors.grey,
                            onPress: () {
                              menuTabbarViewModel.runNextScreenProfile();
                            }),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
