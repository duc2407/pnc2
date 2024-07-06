import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListClinicBranch extends StatelessWidget {
  final VoidCallback onPress;
  const ListClinicBranch({required this.onPress, super.key});
  // final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(79, 217, 217, 217),
            borderRadius:
                BorderRadius.circular(2), // Bo viền tròn với bán kính 2px
            border: Border.all(
              color: Colors.black.withOpacity(0.05), // Màu viền
              width: 1, // Độ dày của viền
            ),
          ),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  height: 70,
                  width: MediaQuery.of(context).size.width / 7,
                  child: Center(
                      child: SvgPicture.asset(
                    'assets/svgs/logo_service1.svg',
                  ))),
              Container(
                padding: const EdgeInsets.only(
                    right: 10, left: 10, top: 5, bottom: 5),
                height: 70,
                width: MediaQuery.of(context).size.width / 1.6,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Cơ sở 1: 234 Hoàng Quốc Việt',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff395241)),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Địa chỉ: 234 Hoàng Quốc Việt, Bắc Từ Liêm, Hà Nội',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Mô tả: Chọn khoa theo yêu cầu, giá chỉ từ 500k',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: SizedBox(
                      height: 60,
                      child: SvgPicture.asset('assets/svgs/right.svg',
                          color: Colors.grey)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
