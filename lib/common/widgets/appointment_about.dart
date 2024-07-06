import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppointmentAbout extends StatefulWidget {
  const AppointmentAbout({super.key});

  @override
  State<AppointmentAbout> createState() => _AppointmentAboutState();
}

class _AppointmentAboutState extends State<AppointmentAbout> {
  int activeStep = 2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color: const Color.fromARGB(255, 217, 217, 217), // Màu của viền
            width: 1, // Độ rộng của viền (1px)
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(7), // Bo tròn các góc 10px
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Clinic Branch: ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text('CS 3 - VOC LE QUANG DAO',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic))
                      ],
                    ),
                  ),
                  Text('Done',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.green))
                ],
              ),
            ),
            Row(
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
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Make an appointment',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          Text(' (code: ap331221)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey)),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Text('Date: ', style: TextStyle(fontSize: 12)),
                              Text('28/05/2024',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Text('Time: ', style: TextStyle(fontSize: 12)),
                              Text('09:00',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Specialty: ', style: TextStyle(fontSize: 12)),
                          Text('dentistry',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          Text('Doctor: ', style: TextStyle(fontSize: 12)),
                          Text('Le Tuan Anh',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Bills: ', style: TextStyle(fontSize: 12)),
                  Text('500.000 VND',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('Status: ', style: TextStyle(fontSize: 12)),
                      Text('Done',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold))
                    ],
                  ),
                  SvgPicture.asset('assets/svgs/right.svg',
                      width: 18, height: 18)
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Please rate the experience here',
                      style: TextStyle(fontSize: 12)),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Màu nền xám
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2), // Bo tròn 2px
                      ),
                      // Padding cho button
                    ),
                    child: const Text(
                      'rate now',
                      style: TextStyle(
                        color: Colors.white, // Màu chữ trắng
                        fontSize: 12, // Kích thước chữ
                      ),
                      textAlign: TextAlign.center, // Căn giữa chữ
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// SizedBox(
//                   height: 50,
//                   child: EasyStepper(
//                     alignment: Alignment.topLeft,
//                     activeStep: activeStep,
//                     activeStepTextColor: Colors.green,
//                     activeStepIconColor: Colors.green,
//                     activeStepBorderColor: Colors.green,
//                     activeStepBackgroundColor: Colors.green,
//                     finishedStepTextColor: Colors.black87,
//                     internalPadding: 40,
//                     showLoadingAnimation: false,
//                     stepRadius: 8,
//                     showStepBorder: true,
//                     steps: [
//                       EasyStep(
//                         customStep: CircleAvatar(
//                           radius: 8,
//                           backgroundColor: Colors.white,
//                           child: CircleAvatar(
//                             radius: 7,
//                             backgroundColor:
//                                 activeStep == 0 ? Colors.green : Colors.white,
//                           ),
//                         ),
//                         title: 'Waiting',
//                       ),
//                       EasyStep(
//                         customStep: CircleAvatar(
//                           radius: 7,
//                           backgroundColor:
//                               activeStep == 1 ? Colors.green : Colors.white,
//                         ),
//                         title: 'Confirmed',
//                         topTitle: false,
//                       ),
//                       EasyStep(
//                         customStep: CircleAvatar(
//                           radius: 7,
//                           backgroundColor:
//                               activeStep == 2 ? Colors.green : Colors.white,
//                         ),
//                         title: 'Done',
//                       ),
//                     ],
//                   ),
//                 ),