import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pnc2/common/widgets/appointment_about.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color:
                        Color.fromARGB(179, 158, 158, 158), // Màu của viền dưới
                    width: 1.0, // Độ dày của viền dưới
                  ),
                  top: BorderSide(
                    color:
                        Color.fromARGB(179, 158, 158, 158), // Màu của viền dưới
                    width: 1.0, // Độ dày của viền dưới
                  ),
                ),
              ),
              child: AppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  title: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: SvgPicture.asset(
                              'assets/svgs/back.svg',
                              color: Colors.white, // Màu của icon quay lại
                              width: 24,
                              height: 24,
                            ),
                          ),
                          const Text(
                            'History',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.search, color: Colors.black),
                        ],
                      ),
                    ],
                  )),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color:
                        Color.fromARGB(179, 158, 158, 158), // Màu của viền dưới
                    width: 1.0, // Độ dày của viền dưới
                  ),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('About'), Text('Status')],
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(84, 213, 210, 210),
        child: ListView(
          children: const [
            AppointmentAbout(),
            AppointmentAbout(),
            AppointmentAbout(),
            AppointmentAbout()
          ],
        ),
      ),
    );
  }
}
