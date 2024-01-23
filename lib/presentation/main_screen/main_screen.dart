import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 804.v,
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
                    top: 51.v,
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
                          style: CustomTextStyles.bodyMediumGray60001,
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
                            horizontal: 14.h,
                            vertical: 24.v,
                          ),
                          decoration: AppDecoration.outlinePurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder29,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 3.v),
                              CustomImageView(
                                imagePath: ImageConstant.img28138372,
                                height: 322.adaptSize,
                                width: 322.adaptSize,
                              ),
                              SizedBox(height: 22.v),
                              CustomElevatedButton(
                                height: 44.v,
                                text: "Upload Photo",
                                margin: EdgeInsets.symmetric(horizontal: 7.h),
                                buttonStyle: CustomButtonStyles.fillIndigoTL13,
                                buttonTextStyle:
                                    CustomTextStyles.titleMediumPrimary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 14.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 14.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup26,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                    height: 16.v,
                    width: 24.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
