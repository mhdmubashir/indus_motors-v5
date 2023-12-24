import 'bloc/forgotpasword_bloc.dart';import 'models/forgotpasword_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/core/utils/validation_functions.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';import 'package:indus_motors/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ForgotpaswordScreen extends StatelessWidget {ForgotpaswordScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<ForgotpaswordBloc>(create: (context) => ForgotpaswordBloc(ForgotpaswordState(forgotpaswordModelObj: ForgotpaswordModel()))..add(ForgotpaswordInitialEvent()), child: ForgotpaswordScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 28.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_forgot_password".tr, style: CustomTextStyles.headlineLargePrimary), SizedBox(height: 60.v), BlocSelector<ForgotpaswordBloc, ForgotpaswordState, TextEditingController?>(selector: (state) => state.newpasswordController, builder: (context, newpasswordController) {return CustomTextFormField(controller: newpasswordController, hintText: "lbl_new_password".tr, hintStyle: CustomTextStyles.bodyMedium13, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true, borderDecoration: TextFormFieldStyleHelper.fillBlueGray);}), SizedBox(height: 27.v), BlocBuilder<ForgotpaswordBloc, ForgotpaswordState>(builder: (context, state) {return CustomTextFormField(controller: state.confirmpasswordController, hintText: "msg_confirm_password".tr, hintStyle: CustomTextStyles.bodyMedium13, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<ForgotpaswordBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 11.v, 11.h, 13.v), child: CustomImageView(imagePath: ImageConstant.imgEyeregular1, height: 14.v, width: 17.h))), suffixConstraints: BoxConstraints(maxHeight: 38.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.only(left: 30.h, top: 11.v, bottom: 11.v), borderDecoration: TextFormFieldStyleHelper.fillBlueGray);}), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_login".tr, buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumWhiteA700), SizedBox(height: 27.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtForgotYourPassword(context);}, child: Text("msg_forgot_your_password".tr, style: CustomTextStyles.bodyMediumPrimary))), SizedBox(height: 62.v), GestureDetector(onTap: () {onTapTxtDonthaveanaccount(context);}, child: RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: CustomTextStyles.bodyMediumLight), TextSpan(text: "lbl_signup".tr, style: CustomTextStyles.bodyMediumPrimaryLight)]), textAlign: TextAlign.left)), SizedBox(height: 5.v)]))))); } 
/// Navigates to the otpscreenScreen when the action is triggered.
onTapTxtForgotYourPassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.otpscreenScreen, ); } 
/// Navigates to the signupScreen when the action is triggered.
onTapTxtDonthaveanaccount(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signupScreen, ); } 
 }