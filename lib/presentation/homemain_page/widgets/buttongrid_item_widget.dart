import '../models/buttongrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:indus_motors/core/app_export.dart';
import 'package:indus_motors/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ButtongridItemWidget extends StatelessWidget {
  ButtongridItemWidget(
    this.buttongridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ButtongridItemModel buttongridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineBlack,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                buttongridItemModelObj.jimny!,
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                buttongridItemModelObj.priceStarts!,
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                buttongridItemModelObj.price!,
                style: CustomTextStyles.titleLargeOnError,
              ),
            ),
            CustomImageView(
              imagePath: buttongridItemModelObj?.image,
              height: 63.v,
              width: 96.h,
              radius: BorderRadius.circular(
                11.h,
              ),
              margin: EdgeInsets.only(left: 11.h),
            ),
            SizedBox(height: 18.v),
            CustomElevatedButton(
              height: 25.v,
              width: 136.h,
              text: "lbl_find_out_more".tr,
              margin: EdgeInsets.only(left: 3.h),
              buttonStyle: CustomButtonStyles.fillBlueGray,
              buttonTextStyle: CustomTextStyles.bodyMediumBlack900Light,
            ),
          ],
        ),
      ),
    );
  }
}
