import 'package:bakground_removel_app/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PhotoUploadScreen extends StatelessWidget {
  const PhotoUploadScreen({Key? key})
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
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 16.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 35.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup41,
                      ),
                      fit: BoxFit.cover,
                    ),
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
                            horizontal: 34.h,
                            vertical: 173.v,
                          ),
                          decoration: AppDecoration.outlinePurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder29,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLoadingGiff1,
                                height: 36.v,
                                width: 280.h,
                              ),
                              SizedBox(height: 29.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Uploading :",
                                    style: CustomTextStyles
                                        .bodyMediumRobotoBlack900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "Picture.jpg",
                                      style: CustomTextStyles
                                          .bodyMediumRobotoPurpleA40001,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 13.v),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 11.v),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup42,
                height: 151.v,
                width: 342.h,
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
