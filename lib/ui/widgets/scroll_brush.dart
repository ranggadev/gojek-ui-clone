import 'dart:ui';

import 'package:flutter/material.dart';

class ScrollBrush extends StatelessWidget {
  const ScrollBrush({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Color(0x4DFFFFFF),
            Color(0x1AFFFFFF),
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      ),
    );
  }
}