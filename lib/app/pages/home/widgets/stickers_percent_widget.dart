import 'dart:math';

import 'package:adf_album_da_copa/app/core/ui/styles/colors_app.dart';
import 'package:adf_album_da_copa/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class StickersPercentWidget extends StatelessWidget {
  final int percent;
  const StickersPercentWidget({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: context.colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '$percent%',
              style: context.textStyles.titlePrimaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 110,
          width: 110,
          child: Transform.rotate(
            angle: -pi / 2.5,
            child: CircularProgressIndicator(
              value: percent / 100,
              color: Colors.white,
              strokeWidth: 5,
              backgroundColor: Colors.white.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}
