import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SourceScreen extends StatelessWidget {
  const SourceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 804.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 790.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup42,
                            height: 151.v,
                            width: 342.h,
                            alignment: Alignment.bottomLeft,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 20.h,
                                top: 36.v,
                                right: 20.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "PicsTonic",
                                    style: theme.textTheme.headlineMedium,
                                  ),
                                  SizedBox(height: 10.v),
                                  SizedBox(
                                    width: 206.h,
                                    child: Text(
                                      "Remove Background, Crop, edit, Colour Correction & Many more...",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style:
                                          CustomTextStyles.bodyMediumGray60001,
                                    ),
                                  ),
                                  SizedBox(height: 61.v),
                                  DottedBorder(
                                    color: appTheme.purpleA400,
                                    padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v,
                                    ),
                                    strokeWidth: 1.h,
                                    radius: Radius.circular(29),
                                    borderType: BorderType.RRect,
                                    dashPattern: [
                                      10.938028335571289,
                                      10.938028335571289,
                                    ],
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 11.h,
                                        vertical: 24.v,
                                      ),
                                      decoration:
                                          AppDecoration.outlinePurpleA.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder29,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 3.v),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .img28138372322x322,
                                            height: 322.adaptSize,
                                            width: 322.adaptSize,
                                            radius: BorderRadius.circular(
                                              28.h,
                                            ),
                                          ),
                                          SizedBox(height: 22.v),
                                          CustomElevatedButton(
                                            height: 44.v,
                                            text: "Upload Photo",
                                            margin: EdgeInsets.only(
                                              left: 9.h,
                                              right: 8.h,
                                            ),
                                            buttonStyle: CustomButtonStyles
                                                .fillIndigoTL13,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumPrimarySemiBold,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup41,
                            height: 671.v,
                            width: 393.h,
                            alignment: Alignment.topCenter,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 804.v,
                      width: double.maxFinite,
                      decoration: AppDecoration.fillBlack,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgScreenshot2023,
                            height: 217.v,
                            width: 393.h,
                            radius: BorderRadius.vertical(
                              top: Radius.circular(23.h),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          _buildUploadPhotoSection(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadPhotoSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 132.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 25.v),
            Divider(
              color: theme.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
