import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AboutDoctorScreen extends StatelessWidget {
  final String doctorId;
  const AboutDoctorScreen({super.key, required this.doctorId});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
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
                                  color: Colors.black, // Màu của icon quay lại
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              Text(
                                'Thông tin bác sĩ: $doctorId',
                                style: const TextStyle(
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
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(92, 205, 204, 204),
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          width:
                              100, // Đảm bảo container có kích thước vuông để làm hình tròn
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape
                                .circle, // Biến hình của container thành hình tròn
                            border: Border.all(
                              color: Colors.grey, // Màu xám
                              width: 1, // Độ dày 1px
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/doctor1.jpg',
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 1.6,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Bác sĩ: '),
                                    Flexible(
                                      child: Text(
                                        'Lê Quang Đạt',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Liên hệ: '),
                                    Flexible(
                                      child: Text(
                                        '0395031862',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Khoa: '),
                                    Flexible(
                                      child: Text(
                                        'Nha Khoa',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Phòng khám: '),
                                    Flexible(
                                      child: Text(
                                        '234 Hoàng Quốc Việt, HN',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Kinh nghiệm: '),
                                    Text('3 năm',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Đặt lịch:',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Text('Ngày:'),
                              Expanded(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  border: Border.all(
                                                    color:
                                                        Colors.grey, // Màu xám
                                                    width: 1, // Độ dày 1px
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              margin: const EdgeInsets.only(
                                                  right: 10),
                                              width: 90,
                                              height: 30,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: const Text(
                                                      '23/12/2024'))),
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      92, 205, 204, 204),
                                                  border: Border.all(
                                                    color:
                                                        Colors.grey, // Màu xám
                                                    width: 1, // Độ dày 1px
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              margin: const EdgeInsets.only(
                                                  right: 10),
                                              width: 90,
                                              height: 30,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: const Text(
                                                      '24/12/2024',
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold)))),
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Text('Giờ: '),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  92, 205, 204, 204),
                                              border: Border.all(
                                                color: Colors.grey, // Màu xám
                                                width: 1, // Độ dày 1px
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          width: 100,
                                          height: 30,
                                          child: Container(
                                              padding: const EdgeInsets.all(5),
                                              child: const Text('13:00 - 13:15',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)))),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: Colors.grey, // Màu xám
                                                width: 1, // Độ dày 1px
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          width: 100,
                                          height: 30,
                                          child: Container(
                                              padding: const EdgeInsets.all(5),
                                              child:
                                                  const Text('13:15 - 13:30'))),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: Colors.grey, // Màu xám
                                                width: 1, // Độ dày 1px
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          width: 100,
                                          height: 30,
                                          child: Container(
                                              padding: const EdgeInsets.all(5),
                                              child:
                                                  const Text('13:30 - 13:45'))),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                color: Colors.grey, // Màu xám
                                                width: 1, // Độ dày 1px
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          width: 100,
                                          height: 30,
                                          child: Container(
                                              padding: const EdgeInsets.all(5),
                                              child:
                                                  const Text('13:45 - 14:00'))),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 210,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(35),
                                    backgroundColor: const Color.fromARGB(
                                        183, 255, 255, 255),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text(
                                    'Đặt lịch',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size.fromHeight(35),
                                    backgroundColor: const Color.fromARGB(
                                        183, 255, 255, 255),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text(
                                    'Chat ngay',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          // width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(35),
                              backgroundColor:
                                  const Color.fromARGB(183, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Gọi tư vấn ngay',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 650,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Mô tả: ',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: const Text(
                              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(35),
                              backgroundColor:
                                  const Color.fromARGB(183, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              'Xem thêm',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Text('Đánh giá ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('(3 đánh giá) :',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width:
                                  50, // Đảm bảo container có kích thước vuông để làm hình tròn
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape
                                    .circle, // Biến hình của container thành hình tròn
                                border: Border.all(
                                  color: Colors.grey, // Màu xám
                                  width: 1, // Độ dày 1px
                                ),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/doctor1.jpg',
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 231, 231, 231),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              margin: const EdgeInsets.only(left: 10),
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('User Name',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12)),
                                      const Text(
                                          'Bác sĩ tư vấn rất nhiệt tình. xứng đáng 10 điểm',
                                          style: TextStyle(fontSize: 12)),
                                      Row(
                                        children: [
                                          const Row(
                                            children: [
                                              Text('Ngày: ',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                              Text('21/06/2024',
                                                  style:
                                                      TextStyle(fontSize: 12))
                                            ],
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Row(children: [
                                              SvgPicture.asset(
                                                  'assets/svgs/like.svg',
                                                  width: 15,
                                                  height: 15,
                                                  color: Colors.red),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 2),
                                                child: const Text('Thích',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                              )
                                            ]),
                                          ),
                                          Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            child: Row(children: [
                                              SvgPicture.asset(
                                                'assets/svgs/comment.svg',
                                                width: 12,
                                                height: 12,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 2),
                                                child: const Text('Trả lời',
                                                    style: TextStyle(
                                                        fontSize: 12)),
                                              )
                                            ]),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    color: const Color.fromARGB(
                                        255, 231, 231, 231),
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 5),
                                    child: SvgPicture.asset(
                                      'assets/svgs/dot.svg',
                                      width: 15,
                                      height: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            color: const Color.fromARGB(47, 226, 226, 226),
            padding: const EdgeInsets.only(left: 10, right: 10),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width:
                      40, // Đảm bảo container có kích thước vuông để làm hình tròn
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape
                        .circle, // Biến hình của container thành hình tròn
                    border: Border.all(
                      color: Colors.grey, // Màu xám
                      width: 1, // Độ dày 1px
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/doctor1.jpg',
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width - 60,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                          suffixIcon: SvgPicture.asset(
                            'assets/svgs/sent.svg',
                            color: Colors.black, // Màu của icon quay lại
                            width: 24,
                            height: 24,
                          ),
                          hintText: 'Nhập đánh giá',
                          contentPadding:
                              const EdgeInsets.only(bottom: 5, left: 10),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
