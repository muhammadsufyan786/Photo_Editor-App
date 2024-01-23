import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup35,
                height: 160.adaptSize,
                width: 160.adaptSize,
              ),
              SizedBox(height: 20.v),
              Text(
                "PicsTonic",
                style: theme.textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
