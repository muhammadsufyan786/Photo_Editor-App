import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetythreeItemWidget extends StatelessWidget {
  const NinetythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle567,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Effect 1",
            style: CustomTextStyles.labelLargeBlack900,
          ),
        ],
      ),
    );
  }
}
