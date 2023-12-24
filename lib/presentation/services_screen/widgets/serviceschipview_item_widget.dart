import '../models/serviceschipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:indus_motors/core/app_export.dart';

// ignore: must_be_immutable
class ServiceschipviewItemWidget extends StatelessWidget {
  ServiceschipviewItemWidget(
    this.serviceschipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ServiceschipviewItemModel serviceschipviewItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 10.v,
        right: 22.h,
        bottom: 10.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        serviceschipviewItemModelObj.widget!,
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgEllipse6,
        height: 35.v,
        width: 36.h,
        radius: BorderRadius.circular(
          18.h,
        ),
        margin: EdgeInsets.only(right: 13.h),
      ),
      selected: (serviceschipviewItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray100,
      selectedColor: appTheme.gray100,
      shape: (serviceschipviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.black900.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                25.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                25.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
