import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 483.v,
      width: 516.h,
      margin: EdgeInsets.only(left: 63.h),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 483.v,
              width: 264.h,
              margin: EdgeInsets.only(right: 64.h),
              decoration: BoxDecoration(
                color: appTheme.deepPurpleA200,
                borderRadius: BorderRadius.circular(
                  12.h,
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
            alignment: Alignment.topRight,
            child: Container(
              height: 152.v,
              width: 262.h,
              margin: EdgeInsets.only(right: 65.h),
              padding: EdgeInsets.symmetric(vertical: 25.v),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL11,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgAnnualySubscription,
                height: 102.adaptSize,
                width: 102.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 146.h),
                    child: Text(
                      " 10",
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 160.h),
                    child: Text(
                      "/ yearly",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 39.v),
                  Container(
                    width: 142.h,
                    margin: EdgeInsets.only(right: 125.h),
                    child: Text(
                      "Get unlimited HD images Download",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMediumPrimaryMedium17,
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 11.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Subscribe Now",
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargePinkA200Medium,
                        ),
                      ),
                      Container(
                        height: 40.v,
                        width: 233.h,
                        margin: EdgeInsets.only(right: 80.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 40.v,
                                width: 233.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    14.h,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Subscribe Now",
                                style:
                                    CustomTextStyles.titleSmallDeeppurpleA200,
                              ),
                            ),
                          ],
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
