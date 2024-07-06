import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnc2/common/utils/app_local_language.dart';
import 'package:pnc2/screens/user/screens_user/viewModel/menu_tabbar_viewModel.dart';
import 'package:pnc2/screens/user/screens_user/widget/list_doctors.dart';
import 'package:pnc2/screens/user/screens_user/widget/function_app.dart';
import 'package:pnc2/screens/user/screens_user/widget/list_clinic_branch.dart';
import 'package:pnc2/screens/user/screens_user/widget/sliver_app_bar_delegate.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int notificationFilterCount = 0;
  String selectedAddress = 'Hà Nội';
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MenuTabbarViewModel>(context);
    var languageManager = Provider.of<LanguageManager>(context);
    var localization = languageManager.currentLocalization;
    var nameFuncApp1 = [
      {'name': 'test a12', 'icon': 'assets/svgs/home.svg'},
      {'name': localization['home'], 'icon': 'assets/svgs/home.svg'},
      {'name': localization['home'], 'icon': 'assets/svgs/home.svg'},
      {'name': localization['home'], 'icon': 'assets/svgs/home.svg'},
      {'name': localization['home'], 'icon': 'assets/svgs/home.svg'},
      {'name': localization['home'], 'icon': 'assets/svgs/home.svg'},
      {'name': localization['home'], 'icon': 'assets/svgs/home.svg'},
    ];
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: SliverAppBarDelegate(MediaQuery.paddingOf(context).top),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(36, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: Text('List Function',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff395241))),
                    )
                  ],
                ),
                SizedBox(
                  height: 170,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: nameFuncApp1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FunctionApp(
                          name: nameFuncApp1[index]['name'].toString(),
                          iconPath: nameFuncApp1[index]['icon'].toString(),
                          color: const Color(0xff395241),
                          colorText: const Color(0xff395241),
                          onPress: () {});
                    },
                  ),
                ),
              ],
            ),
          ),
        )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(36, 158, 158, 158),
                  borderRadius: BorderRadius.circular(10)),
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('List Doctor',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff395241))),
                      PopupMenuButton<int>(
                        icon: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/address.svg',
                              color: const Color(0xff395241),
                              width: 18,
                              height: 18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(selectedAddress,
                                style: const TextStyle(
                                  color: Color(0xff395241),
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        itemBuilder: (context) => [
                          const PopupMenuItem<int>(
                            value: 1,
                            child: Text(
                              'Hà Nội',
                              style: TextStyle(color: Color(0xff395241)),
                            ),
                          ),
                          const PopupMenuItem<int>(
                            value: 2,
                            child: Text('Đà Nẵng',
                                style: TextStyle(color: Color(0xff395241))),
                          ),
                          const PopupMenuItem<int>(
                            value: 3,
                            child: Text('TP.Hồ Chí Minh',
                                style: TextStyle(color: Color(0xff395241))),
                          ),
                        ],
                        onSelected: (value) {
                          switch (value) {
                            case 1:
                              setState(() {
                                selectedAddress = 'Hà Nội';
                              });
                              break;
                            case 2:
                              setState(() {
                                selectedAddress = 'Đà Nẵng';
                              });
                              break;
                            case 3:
                              setState(() {
                                selectedAddress = 'TP.Hồ Chí Minh';
                              });
                              break;
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return ListDoctors(onPress: () {
                          viewModel.runNextScreenAboutDoctor(
                              context, index.toString());
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(36, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            // color: const Color.fromARGB(36, 158, 158, 158),
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('List Clinic Branchs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff395241))),
                    PopupMenuButton<int>(
                      // padding: const EdgeInsets.all(0),
                      icon: Row(
                        children: [
                          SvgPicture.asset('assets/svgs/address.svg',
                              width: 18,
                              height: 18,
                              color: const Color(0xff395241)),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            selectedAddress,
                            style: const TextStyle(
                                color: Color(0xff395241),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      itemBuilder: (context) => const [
                        PopupMenuItem<int>(
                          value: 1,
                          child: Text(
                            'Hà Nội',
                            style: TextStyle(color: Color(0xff395241)),
                          ),
                        ),
                        PopupMenuItem<int>(
                          value: 2,
                          child: Text('Đà Nẵng',
                              style: TextStyle(color: Color(0xff395241))),
                        ),
                        PopupMenuItem<int>(
                          value: 3,
                          child: Text('TP.Hồ Chí Minh',
                              style: TextStyle(color: Color(0xff395241))),
                        ),
                      ],
                      onSelected: (value) {
                        switch (value) {
                          case 1:
                            setState(() {
                              selectedAddress = 'Hà Nội';
                            });
                            break;
                          case 2:
                            setState(() {
                              selectedAddress = 'Đà Nẵng';
                            });
                            break;
                          case 3:
                            setState(() {
                              selectedAddress = 'TP.Hồ Chí Minh';
                            });
                            break;
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 70 * 4 + 60,
                  child: ListView(
                    // shrinkWrap: true,
                    children: [
                      Column(
                        children: [
                          ListClinicBranch(onPress: () {
                            viewModel.runNextScreenAboutClinicBranch(
                                context, 'test');
                          }),
                          ListClinicBranch(onPress: () {
                            viewModel.runNextScreenAboutClinicBranch(
                                context, 'test');
                          }),
                          ListClinicBranch(onPress: () {
                            viewModel.runNextScreenAboutClinicBranch(
                                context, 'test');
                          }),
                          ListClinicBranch(onPress: () {
                            viewModel.runNextScreenAboutClinicBranch(
                                context, 'test');
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(40),
                    side: const BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "View All",
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        'assets/svgs/google.svg',
                        width: 24,
                        height: 24,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ],
    ));
  }
}
