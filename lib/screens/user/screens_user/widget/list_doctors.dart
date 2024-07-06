import 'package:flutter/material.dart';

class ListDoctors extends StatelessWidget {
  const ListDoctors({required this.onPress, super.key});
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: 90.0,
        margin: const EdgeInsets.only(right: 10.0),
        child: Column(
          children: [
            Container(
              width:
                  50, // Đảm bảo container có kích thước vuông để làm hình tròn
              height: 50,
              decoration: BoxDecoration(
                shape:
                    BoxShape.circle, // Biến hình của container thành hình tròn
                border: Border.all(
                  color: Colors.grey, // Màu xám
                  width: 1, // Độ dày 1px
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/doctor1.jpg',
                  width: 40,
                ),
              ),
            ),
            const SizedBox(height: 4), // Khoảng cách giữa hình ảnh và văn bản
            const Flexible(
              child: Text(
                'Le Van Dat',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff395241)),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            const Flexible(
              child: Text(
                'Khoa: Tim',
                style: TextStyle(fontSize: 10, color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
