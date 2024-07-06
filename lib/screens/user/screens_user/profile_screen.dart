import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnc2/dialogs/dialog_setting_app.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              height: 80,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(139, 200, 200, 200))),
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40)),
                      width: 80,
                      child: Center(
                        child: Container(
                          padding:
                              const EdgeInsets.all(1), // Khoảng cách cho viền
                          decoration: const BoxDecoration(
                            color: Colors.grey, // Màu xám cho viền
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/user1.png',
                              width: 60, // Kích thước hình ảnh
                              height: 60, // Kích thước hình ảnh
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )),
                  SizedBox(
                      width: MediaQuery.of(context).size.width - 110 - 2,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Full Name User',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Text('View information',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ))
                ],
              )),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 60,
                  child: Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        width: 80,
                        child: Center(
                          child: Container(
                            padding:
                                const EdgeInsets.all(1), // Khoảng cách cho viền
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: SvgPicture.asset(
                                'assets/svgs/bill.svg',
                                width: 30, // Kích thước hình ảnh
                                height: 30, // Kích thước hình ảnh
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 110 - 2,
                      child: const Text('Wallet',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    )
                  ]),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const DialogSettingApp(),
                  );
                },
                child: SizedBox(
                  height: 60,
                  child: Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        width: 80,
                        child: Center(
                          child: Container(
                            padding:
                                const EdgeInsets.all(1), // Khoảng cách cho viền
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: SvgPicture.asset(
                                'assets/svgs/setting.svg',
                                width: 30, // Kích thước hình ảnh
                                height: 30, // Kích thước hình ảnh
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 110 - 2,
                      child: const Text('Setting',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    )
                  ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 60,
                  child: Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        width: 80,
                        child: Center(
                          child: Container(
                            padding:
                                const EdgeInsets.all(1), // Khoảng cách cho viền
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: SvgPicture.asset(
                                'assets/svgs/version.svg',
                                width: 30, // Kích thước hình ảnh
                                height: 30, // Kích thước hình ảnh
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 110 - 2,
                      child: const Text('Version: 1.0.1',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    )
                  ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 60,
                  child: Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        width: 80,
                        child: Center(
                          child: Container(
                            padding:
                                const EdgeInsets.all(1), // Khoảng cách cho viền
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: SvgPicture.asset(
                                'assets/svgs/logout1.svg',
                                width: 30, // Kích thước hình ảnh
                                height: 30, // Kích thước hình ảnh
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 110 - 2,
                      child: const Text('Logout',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                    )
                  ]),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
