import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pnc2/common/utils/app_local_language.dart';
import 'package:pnc2/viewModels/mainViewModels.dart';
import 'package:provider/provider.dart';

class DialogSettingApp extends StatefulWidget {
  const DialogSettingApp({super.key});

  @override
  State<DialogSettingApp> createState() => _DialogSettingAppState();
}

class _DialogSettingAppState extends State<DialogSettingApp> {
  final introKey = GlobalKey<IntroductionScreenState>();
  String selectedLanguage = 'ENG';
  @override
  Widget build(BuildContext context) {
    final mainViewModel = Provider.of<MainViewModel>(context);
    var languageManager = Provider.of<LanguageManager>(context);
    var localization = languageManager.currentLocalization;
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: SizedBox(
        height: 250,
        child: Container(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: Column(
            children: [
              const Text('Setting',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              Column(
                children: [
                  Row(
                    children: [
                      const Text('Language: ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Transform.scale(
                              scale:
                                  0.9, // Đặt tỉ lệ thu phóng, thay đổi giá trị này để điều chỉnh kích thước của chữ và nút switch
                              child: Text(
                                mainViewModel.isVietnamese
                                    ? 'Vietnamese'
                                    : 'English',
                                style: const TextStyle(
                                  fontSize:
                                      16, // Kích thước chữ cho chữ VN hoặc ENG
                                ),
                              ),
                            ),
                            Transform.scale(
                              scale:
                                  0.6, // Đặt tỉ lệ thu phóng, thay đổi giá trị này để điều chỉnh kích thước của chữ và nút switch
                              child: Switch(
                                activeTrackColor: Colors
                                    .blue, // Màu của dải đánh dấu khi switch ở trạng thái true
                                inactiveTrackColor: Colors
                                    .grey, // Màu của dải đánh dấu khi switch ở trạng thái false
                                activeColor: Colors
                                    .white, // Màu của hộp khi switch ở trạng thái true
                                inactiveThumbColor: Colors
                                    .white, // Màu của hộp khi switch ở trạng thái false

                                value: mainViewModel.isVietnamese,
                                onChanged: (value) {
                                  setState(() {
                                    mainViewModel.isVietnamese
                                        ? languageManager.switchLanguage('en')
                                        : languageManager.switchLanguage('vn');
                                    mainViewModel.isVietnamese = value;
                                    // Thêm phần logic để thay đổi ngôn ngữ tại đây
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
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
                    Text(
                      localization['done_setting_dialog']!,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
