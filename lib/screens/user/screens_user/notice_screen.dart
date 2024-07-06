import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({super.key});

  @override
  State<NoticeScreen> createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromARGB(
                          179, 158, 158, 158), // Màu của viền dưới
                      width: 1.0, // Độ dày của viền dưới
                    ),
                    top: BorderSide(
                      color: Color.fromARGB(
                          179, 158, 158, 158), // Màu của viền dưới
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
                              'Notice',
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
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    child: Text(
                      'Notice Recent',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  InkWell(onTap: () {}, child: const Text('Marked viewed (2)')),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black, // Màu của viền dưới
                          width: 1, // Độ rộng của viền dưới (1px)
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/app1.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 140,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Giao hàng thành công',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Ngày thông báo: 28/05/2024',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(child: Text('Viewed')),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(159, 251, 246, 232),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black, // Màu của viền dưới
                          width: 1, // Độ rộng của viền dưới (1px)
                        ),
                        top: BorderSide(
                          color: Colors.black, // Màu của viền dưới
                          width: 1, // Độ rộng của viền dưới (1px)
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'assets/images/app1.png',
                            width: 60,
                            height: 60,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 140,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Giao hàng thành công',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                'Ngày thông báo: 28/05/2024',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(child: Text('Viewed')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
