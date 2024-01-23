import '../subscription_two_screen/widgets/slider_item_widget.dart';
import 'package:bakground_removel_app/core/app_export.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:bakground_removel_app/widgets/app_bar/appbar_title.dart';
import 'package:bakground_removel_app/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SubscriptionTwoScreen extends StatelessWidget {
  SubscriptionTwoScreen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 33.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 79.h,
                  right: 68.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 5.v,
                          bottom: 10.v,
                        ),
                        child: Text(
                          "Free",
                          style: CustomTextStyles.titleSmallGray600_1,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 50,
                    ),
                    Text(
                      "Monthly",
                      style: CustomTextStyles.headlineMediumNunitoBlack900,
                    ),
                    Spacer(
                      flex: 50,
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 8.v,
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
              SizedBox(height: 21.v),
              _buildSlider(context),
              SizedBox(height: 30.v),
              SizedBox(
                height: 7.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: sliderIndex,
                  count: 3,
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
  Widget _buildSlider(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 483.v,
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
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return SliderItemWidget();
      },
    );
  }
}
