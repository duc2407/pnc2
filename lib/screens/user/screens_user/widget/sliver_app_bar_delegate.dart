import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pnc2/common/widgets/icon_img_button.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  const SliverAppBarDelegate(this.safeAreaTop);

  final double safeAreaTop;

  @override
  double get minExtent => kToolbarHeight + safeAreaTop;

  @override
  double get maxExtent => Platform.isAndroid ? 200 : 230;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration =>
      OverScrollHeaderStretchConfiguration();

  double get deltaExtent => maxExtent - minExtent;

  static const imgBgr = Image(
      image: AssetImage('assets/images/logo_app.png'), fit: BoxFit.fitHeight);

  double transform(double begin, double end, double t, [double x = 1]) {
    return Tween<double>(begin: begin, end: end)
        .transform(x == 1 ? t : min(1.0, t * x));
  }

  Color transformColor(Color? begin, Color? end, double t, [double x = 1]) {
    return ColorTween(begin: begin, end: end)
            .transform(x == 1 ? t : min(1.0, t * x)) ??
        Colors.transparent;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final currentExtent = max(minExtent, maxExtent - shrinkOffset);
        // 0.0 -> Expanded
        // 1.0 -> Collapsed
        double t =
            clampDouble(1.0 - (currentExtent - minExtent) / deltaExtent, 0, 1);

        final List<Widget> children = <Widget>[];

        double height = maxExtent;

        // Background image
        if (constraints.maxHeight > height) height = constraints.maxHeight;
        children.add(Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: height - deltaExtent / 2,
          child: imgBgr,
        ));

        // Box
        final boxPaddingBottom = Platform.isAndroid ? 16.0 : 12.0;
        const actionFloatTextStyle = TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          height: 1.1,
          fontSize: 14,
        );
        children
          ..add(Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: deltaExtent,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.symmetric(horizontal: transform(16, 0, t, 2)),
              padding: EdgeInsets.only(bottom: boxPaddingBottom),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 235, 235),
                borderRadius: BorderRadius.circular(transform(8, 0, t, 2)),
              ),
              child: const DefaultTextStyle(
                style: actionFloatTextStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Thanh toán',
                        style: TextStyle(color: Color(0xff395241)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        'Mua thuốc',
                        style: TextStyle(color: Color(0xff395241)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        'Đặt lịch',
                        style: TextStyle(color: Color(0xff395241)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        'Tra cứu',
                        style: TextStyle(color: Color(0xff395241)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))

          // Background image Clipped
          ..add(Positioned(
            top: 0,
            height: height - deltaExtent / 2,
            width: constraints.maxWidth,
            child: ClipRect(
              clipper: RectClipper(minExtent),
              child: imgBgr,
            ),
          ))

          // Splash transform color
          ..add(Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Container(
              height: currentExtent,
              width: constraints.maxWidth,
              color: transformColor(null, Colors.white, t, 3),
            ),
          ));

        // App bar
        const appBarPadding = SizedBox(width: 4);
        final appBarContentWidth =
            constraints.maxWidth - (appBarPadding.width! * 2);
        const totalIconImgButtonSize = IconImgButton.tapTargetSize * 7;
        final appBarSpace =
            SizedBox(width: (appBarContentWidth - totalIconImgButtonSize) / 6);

        //App bar fixed position
        Color iconBgrColor = Colors.transparent;
        children.add(Positioned(
          left: 0,
          top: 0,
          right: 0,
          child: Container(
            height: minExtent,
            color: transformColor(
                null, const Color.fromARGB(219, 217, 213, 213), t, 2),
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  appBarPadding,
                  IconImgButton(
                    'search.svg',
                    backgroundColor: iconBgrColor,
                  ),
                  appBarSpace,
                  const Spacer(),
                  appBarSpace,
                  IconImgButton(
                    'cart.svg',
                    backgroundColor: iconBgrColor,
                  ),
                  appBarSpace,
                  // const Padding(
                  //   padding: EdgeInsets.only(right: 16),
                  //   child: Icon(Icons.search, color: Colors.white),
                  // ),
                  IconImgButton(
                    'messenger.svg',
                    backgroundColor: iconBgrColor,
                  ),
                  appBarPadding,
                ],
              ),
            ),
          ),
        ));

        // App bar transform position
        iconBgrColor = transformColor(Colors.grey, null, t);
        final iconSize = transform(48, 48, t);
        final iconPadding = transform(8, 4, t);

        children.add(Positioned(
          height: minExtent,
          left: transform(
              16,
              appBarPadding.width! +
                  IconImgButton.tapTargetSize +
                  appBarSpace.width!,
              t),
          right: transform(
              16,
              appBarPadding.width! +
                  IconImgButton.tapTargetSize * 2 +
                  appBarSpace.width! * 2,
              t),
          bottom: transform(
              boxPaddingBottom +
                  actionFloatTextStyle.fontSize! *
                      actionFloatTextStyle.height! *
                      2,
              0,
              t),
          child: SafeArea(
            bottom: false,
            minimum: EdgeInsets.symmetric(horizontal: transform(16, 0, t)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconImgButton(
                  'wallet.svg',
                  size: iconSize,
                  padding: iconPadding,
                  backgroundRadius: 16,
                  backgroundColor: iconBgrColor,
                ),
                IconImgButton(
                  'cart.svg',
                  size: iconSize,
                  padding: iconPadding,
                  backgroundRadius: 16,
                  backgroundColor: iconBgrColor,
                ),
                IconImgButton(
                  'store.svg',
                  size: iconSize,
                  padding: iconPadding,
                  backgroundRadius: 16,
                  backgroundColor: iconBgrColor,
                ),
                IconImgButton(
                  'address.svg',
                  size: iconSize,
                  padding: iconPadding,
                  backgroundRadius: 16,
                  backgroundColor: iconBgrColor,
                ),
              ],
            ),
          ),
        ));

        return Stack(children: children);
      },
    );
  }
}

class RectClipper extends CustomClipper<Rect> {
  final double maxHeight;

  RectClipper(this.maxHeight);

  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, maxHeight);
    return rect;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
