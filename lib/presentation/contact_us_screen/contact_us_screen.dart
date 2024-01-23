import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 12.v),
                child: Column(children: [
                  _buildContactUsView(context),
                  SizedBox(height: 35.v),
                  CustomElevatedButton(
                      height: 41.v,
                      width: 205.h,
                      text: "info@picstonic.com",
                      buttonStyle: CustomButtonStyles.fillIndigoTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPrimaryMedium16_2),
                  SizedBox(height: 19.v),
                  CustomElevatedButton(
                      height: 41.v,
                      width: 174.h,
                      text: "+968 12354567",
                      buttonStyle: CustomButtonStyles.fillIndigoTL8,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPrimaryMedium16_2),
                  SizedBox(height: 87.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup35418,
                        height: 45.adaptSize,
                        width: 45.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, top: 8.v),
                        child: Text("PicsTonic",
                            style: theme.textTheme.headlineLarge))
                  ]),
                  SizedBox(height: 9.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtWeburl(context);
                      },
                      child: Text("WWW.PICSTONIC.IO",
                          style:
                              CustomTextStyles.bodySmallLEMONMILKIndigo70001)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 54.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMegaphone,
            margin: EdgeInsets.only(left: 30.h, top: 20.v, bottom: 19.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Contact Us"));
  }

  /// Section Widget
  Widget _buildContactUsView(BuildContext context) {
    return SizedBox(
        height: 388.adaptSize,
        width: 388.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 98.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 163.adaptSize,
                            width: 163.adaptSize,
                            decoration:
                                BoxDecoration(color: appTheme.purpleA200Cc)),
                        Container(
                            height: 163.adaptSize,
                            width: 163.adaptSize,
                            decoration:
                                BoxDecoration(color: appTheme.indigoA200Cc))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgContactUs1,
              height: 388.adaptSize,
              width: 388.adaptSize,
              radius: BorderRadius.circular(102.h),
              alignment: Alignment.center)
        ]));
  }

  onTapTxtWeburl(BuildContext context) {
    // TODO: implement Actions
  }
}
