import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final GestureTapCallback? onTap;
  final EdgeInsetsGeometry padding;
  final double? height;
  final double? width;
  final Color bgColor;
  final BorderRadius? borderRadius;
  final bool shadow;
  final Color shadowColor;
  final double shadowOpacity;
  final double elevationX;
  final double elevationY;
  final double shadowBlur;
  final Widget? child;

  const CustomCard(
      {Key? key,
      this.onTap,
      this.padding = EdgeInsets.zero,
      this.height,
      this.width,
      this.bgColor = Colors.transparent,
      this.borderRadius,
      required this.shadow,
      this.shadowColor = Colors.grey,
      this.shadowOpacity = 1,
      this.elevationX = 0,
      this.elevationY = 1,
      this.shadowBlur = 6,
      this.child,
    })
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: borderRadius == null ? BorderRadius.circular(25) : borderRadius,
          boxShadow: [
            if (shadow)
            BoxShadow(
                color: shadowColor.withOpacity(shadowOpacity),
                offset: Offset(elevationX, elevationY),
                blurRadius: shadowBlur,
              ),
          ]),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius == null ? BorderRadius.circular(25) : borderRadius!,
        ),
        margin: EdgeInsets.zero,
        elevation: 0,
        color: Colors.transparent,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: child == null ? Container() : child,
          ),
        ),
      ),
    );
  }
}
