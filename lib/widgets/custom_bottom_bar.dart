import 'package:bakground_removel_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavCrop,
      activeIcon: ImageConstant.imgNavCrop,
      title: "Crop",
      type: BottomBarEnum.Crop,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavCollage,
      activeIcon: ImageConstant.imgNavCollage,
      title: "Collage",
      type: BottomBarEnum.Collage,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavFilters,
      activeIcon: ImageConstant.imgNavFilters,
      title: "Filters",
      type: BottomBarEnum.Filters,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavEffect26x26,
      activeIcon: ImageConstant.imgNavEffect26x26,
      title: "Effect",
      type: BottomBarEnum.Effect,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavText,
      activeIcon: ImageConstant.imgNavText,
      title: "Text",
      type: BottomBarEnum.Text,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgArrowRight,
      activeIcon: ImageConstant.imgArrowRight,
      title: "Crop",
      type: BottomBarEnum.Crop,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  color: appTheme.blueGray90001,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.blueGray90001,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  color: appTheme.blueGray90001,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: appTheme.blueGray90001,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Crop,
  Collage,
  Filters,
  Effect,
  Text,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
