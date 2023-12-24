import 'package:flutter/material.dart';
import 'package:indus_motors/core/app_export.dart';
import 'package:indus_motors/core/utils/validation_functions.dart';
import 'package:indus_motors/widgets/custom_elevated_button.dart';
import 'package:indus_motors/widgets/custom_text_form_field.dart';

import 'bloc/signin_bloc.dart';
import 'models/signin_model.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SigninBloc>(
        create: (context) =>
            SigninBloc(SigninState(signinModelObj: SigninModel()))
              ..add(SigninInitialEvent()),
        child: SigninScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 28.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 8.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 77.h),
                                  child: Text("lbl_sign_in".tr,
                                      style: theme.textTheme.displayMedium))),
                          SizedBox(height: 59.v),
                          BlocSelector<SigninBloc, SigninState,
                                  TextEditingController?>(
                              selector: (state) => state.customeridController,
                              builder: (context, customeridController) {
                                return CustomTextFormField(
                                    controller: customeridController,
                                    hintText: "lbl_customer_id".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyMediumBlack900,
                                    prefix: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            7.h, 11.v, 10.h, 10.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUsersolid1,
                                            height: 17.adaptSize,
                                            width: 17.adaptSize)),
                                    prefixConstraints:
                                        BoxConstraints(maxHeight: 38.v),
                                    contentPadding: EdgeInsets.only(
                                        top: 11.v, right: 30.h, bottom: 11.v),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillBlueGray);
                              }),
                          SizedBox(height: 31.v),
                          BlocBuilder<SigninBloc, SigninState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                controller: state.passwordController,
                                hintText: "lbl_password".tr,
                                hintStyle: CustomTextStyles.bodyMediumBlack900,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.h, 11.v, 10.h, 12.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgKeysolid1,
                                        height: 15.adaptSize,
                                        width: 15.adaptSize)),
                                prefixConstraints:
                                    BoxConstraints(maxHeight: 38.v),
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<SigninBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            30.h, 12.v, 8.h, 12.v),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEyeregular1,
                                            height: 14.v,
                                            width: 17.h))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 38.v),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: state.isShowPassword,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 9.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillBlueGray);
                          }),
                          SizedBox(height: 28.v),
                          CustomElevatedButton(
                              text: "lbl_login".tr,
                              buttonStyle: CustomButtonStyles.fillPrimary,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700),
                          SizedBox(height: 47.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotYourPassword(context);
                                  },
                                  child: Text("msg_forgot_your_password".tr,
                                      style:
                                          CustomTextStyles.bodyMediumPrimary))),
                          SizedBox(height: 74.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveanaccount(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style:
                                            CustomTextStyles.bodyMediumLight),
                                    TextSpan(
                                        text: "lbl_signup".tr,
                                        style: CustomTextStyles
                                            .bodyMediumPrimaryLight)
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  /// Navigates to the otpscreenScreen when the action is triggered.
  onTapTxtForgotYourPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.otpscreenScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }

  onTapLoginButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homemainPage,
    );
  }
}
