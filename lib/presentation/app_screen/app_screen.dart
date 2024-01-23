import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:bakground_removel_app/widgets/custom_icon_button.dart';
import 'package:bakground_removel_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  AppScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: 804.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildDigitalArtistMaleSection(context),
                    _buildLineSection(context),
                    _buildPhoneSection(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDigitalArtistMaleSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 343.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgDigitalArtistMale,
              height: 343.v,
              width: 393.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 2.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 2.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup5,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(3.h, 567.v, 3.h, 233.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 138.h,
              child: Divider(),
            ),
            SizedBox(
              width: 138.h,
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 468.v,
        width: 359.h,
        margin: EdgeInsets.only(bottom: 5.v),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(22.h),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder29,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login with your Email or Google Account",
                      style: CustomTextStyles.bodyMediumBluegray900,
                    ),
                    SizedBox(height: 14.v),
                    CustomTextFormField(
                      controller: phoneController,
                      hintText: "Email or Phone",
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 11.v, 16.h, 11.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFeeye,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 47.v,
                      ),
                      obscureText: true,
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 13.v,
                        bottom: 13.v,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Text(
                          "Forget Password ?",
                          style: CustomTextStyles.labelLargeIndigo70001,
                        ),
                      ),
                    ),
                    SizedBox(height: 26.v),
                    CustomElevatedButton(
                      text: "Sign In",
                      buttonStyle: CustomButtonStyles.fillIndigo,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPrimaryMedium16_1,
                    ),
                    SizedBox(height: 77.v),
                    CustomElevatedButton(
                      text: "Continue with Google",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 15.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGoogle,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                    ),
                    SizedBox(height: 23.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodySmallNunitoff727272,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "Register",
                            style: CustomTextStyles.labelLargeff35339a,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 141.v),
                child: Text(
                  "Or Sign In With",
                  style: CustomTextStyles.labelLargeSFProTextPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
