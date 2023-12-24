import 'bloc/otpscreen_bloc.dart';
import 'models/otpscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:indus_motors/core/app_export.dart';
import 'package:indus_motors/widgets/custom_elevated_button.dart';
import 'package:indus_motors/widgets/custom_pin_code_text_field.dart';

class OtpscreenScreen extends StatelessWidget {
  const OtpscreenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpscreenBloc>(
      create: (context) => OtpscreenBloc(OtpscreenState(
        otpscreenModelObj: OtpscreenModel(),
      ))
        ..add(OtpscreenInitialEvent()),
      child: OtpscreenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 23.h,
            top: 143.v,
            right: 23.h,
          ),
          child: Column(
            children: [
              Text(
                "lbl_otp".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 37.v),
              SizedBox(
                width: 310.h,
                child: Text(
                  "msg_we_send_you_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumLight_1,
                ),
              ),
              SizedBox(height: 62.v),
              BlocSelector<OtpscreenBloc, OtpscreenState,
                  TextEditingController?>(
                selector: (state) => state.otpController,
                builder: (context, otpController) {
                  return CustomPinCodeTextField(
                    context: context,
                    controller: otpController,
                    onChanged: (value) {
                      otpController?.text = value;
                    },
                  );
                },
              ),
              SizedBox(height: 64.v),
              CustomElevatedButton(
                text: "msg_confirm_password".tr,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 6.h,
                ),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
