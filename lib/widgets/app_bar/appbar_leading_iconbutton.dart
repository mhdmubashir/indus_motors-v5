import 'package:flutter/material.dart';
import 'package:indus_motors/core/app_export.dart';
import 'package:indus_motors/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32.v,
          width: 31.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGoBack21,
          ),
        ),
      ),
    );
  }
}
