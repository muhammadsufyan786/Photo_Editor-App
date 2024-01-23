import '../subscription_screen/widgets/userprofileslider_item_widget.dart';
import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SubscriptionScreen extends StatelessWidget {
  SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 31.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 37.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Free",
                      style: CustomTextStyles.headlineMediumNunitoBlack900,
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 9.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "Monthly",
                          style: CustomTextStyles.titleSmallGray600_1,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 9.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          "Yearly",
                          style: CustomTextStyles.titleSmallGray600_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.v),
              _buildUserProfileSlider(context),
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 7.v,
                  child: AnimatedSmoothIndicator(
                    activeIndex: sliderIndex,
                    count: 2,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: appTheme.purpleA40002,
                      dotColor: appTheme.purpleA40002.withOpacity(0.46),
                      dotHeight: 7.v,
                      dotWidth: 7.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 19.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Subscription",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 64.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 482.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return UserprofilesliderItemWidget();
        },
      ),
    );
  }
}
