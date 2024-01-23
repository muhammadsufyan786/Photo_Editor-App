import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/custom_elevated_button.dart';
import 'package:bakground_removel_app/widgets/custom_icon_button.dart';
import 'package:bakground_removel_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AppScreenOneScreen extends StatelessWidget {
  AppScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController lastNameSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

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
                height: 820.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildVirtualTourOneSection(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 508.v,
                        width: 386.h,
                        margin: EdgeInsets.only(bottom: 5.v),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 13.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 22.h,
                                  vertical: 20.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder29,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Text(
                                      "Get Started Free Create Account",
                                      style: CustomTextStyles
                                          .bodyMediumBluegray900,
                                    ),
                                    SizedBox(height: 15.v),
                                    _buildLastNameSection(context),
                                    SizedBox(height: 20.v),
                                    _buildEmailSection(context),
                                    SizedBox(height: 20.v),
                                    _buildPasswordSection(context),
                                    SizedBox(height: 31.v),
                                    _buildSignUpSection(context),
                                    SizedBox(height: 77.v),
                                    _buildContinueWithGoogleSection(context),
                                    SizedBox(height: 23.v),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Have an account? ",
                                            style: CustomTextStyles
                                                .bodySmallNunitoff727272,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                          TextSpan(
                                            text: "Login",
                                            style: CustomTextStyles
                                                .labelLargeff35339a,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildLineSection(context),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildVirtualTourOneSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 387.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVirtualTour1,
              height: 387.v,
              width: 393.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 18.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 8.v,
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
  Widget _buildLastNameSection(BuildContext context) {
    return CustomTextFormField(
      controller: lastNameSectionController,
      hintText: "First & Last Name",
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return CustomTextFormField(
      controller: emailSectionController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return CustomTextFormField(
      controller: passwordSectionController,
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
    );
  }

  /// Section Widget
  Widget _buildSignUpSection(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign Up",
      buttonStyle: CustomButtonStyles.fillIndigo,
      buttonTextStyle: CustomTextStyles.titleMediumPrimaryMedium16_1,
    );
  }

  /// Section Widget
  Widget _buildContinueWithGoogleSection(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 16.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgGoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildLineSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          top: 352.v,
          bottom: 139.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 6.v,
              ),
              child: SizedBox(
                width: 138.h,
                child: Divider(),
              ),
            ),
            Text(
              "Or Sign Up With",
              style: CustomTextStyles.labelLargeSFProTextPrimaryContainer,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 6.v,
              ),
              child: SizedBox(
                width: 138.h,
                child: Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
