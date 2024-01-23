import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesliderItemWidget extends StatelessWidget {
  const UserprofilesliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 482.v,
      width: 328.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 482.v,
              width: 263.h,
              decoration: BoxDecoration(
                color: appTheme.pinkA200,
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
                border: Border.all(
                  color: appTheme.gray300,
                  width: 1.h,
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.black900.withOpacity(0.1),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 152.v,
              width: 261.h,
              padding: EdgeInsets.symmetric(vertical: 25.v),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL11,
              ),
              child: Opacity(
                opacity: 0.7,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFree1,
                  height: 102.adaptSize,
                  width: 102.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                bottom: 20.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 80.h),
                    child: Text(
                      " 0",
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 57.h),
                    child: Text(
                      "/ 10 images",
                      style: CustomTextStyles.titleLarge21,
                    ),
                  ),
                  SizedBox(height: 39.v),
                  Container(
                    width: 140.h,
                    margin: EdgeInsets.only(left: 46.h),
                    child: Text(
                      "Download 10 low quality images",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumPrimaryMedium17_1,
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Row(
                    children: [
                      SizedBox(
                        height: 39.v,
                        width: 232.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 39.v,
                                width: 232.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    13.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Subscribe Now",
                                style: CustomTextStyles.labelLargePinkA200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 114.h,
                          top: 10.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Subscribe Now",
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeDeeppurpleA200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
