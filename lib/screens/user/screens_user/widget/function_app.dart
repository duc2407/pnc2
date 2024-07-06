import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FunctionApp extends StatelessWidget {
  const FunctionApp({
    required this.name,
    required this.onPress,
    required this.iconPath,
    this.widthSvg,
    this.color,
    this.colorText,
    this.notificationCount,
    super.key,
  });
  final String name;
  final Color? color;
  final Color? colorText;
  final double? widthSvg;
  final VoidCallback onPress;
  final String iconPath;
  final int? notificationCount;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: 40,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                // Sử dụng SvgPicture.asset để hiển thị file SVG
                iconPath,
                width: widthSvg ?? 24,
                color: color ?? Colors.grey,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 12, color: colorText ?? Colors.grey),
              ),
            ],
          ),
          if (notificationCount != null && notificationCount! > 0)
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                child: Text(
                  '$notificationCount',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
