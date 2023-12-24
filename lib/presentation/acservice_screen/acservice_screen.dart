import 'bloc/acservice_bloc.dart';import 'models/acservice_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/core/utils/validation_functions.dart';import 'package:indus_motors/widgets/app_bar/appbar_leading_image.dart';import 'package:indus_motors/widgets/app_bar/appbar_title.dart';import 'package:indus_motors/widgets/app_bar/appbar_trailing_image.dart';import 'package:indus_motors/widgets/app_bar/custom_app_bar.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';import 'package:indus_motors/widgets/custom_icon_button.dart';import 'package:indus_motors/widgets/custom_outlined_button.dart';import 'package:indus_motors/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AcserviceScreen extends StatelessWidget {AcserviceScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<AcserviceBloc>(create: (context) => AcserviceBloc(AcserviceState(acserviceModelObj: AcserviceModel()))..add(AcserviceInitialEvent()), child: AcserviceScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 81.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 9.v), child: CustomIconButton(height: 42.adaptSize, width: 42.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgIcons8BackButton30))), CustomOutlinedButton(width: 178.h, text: "lbl_ac_service".tr, margin: EdgeInsets.only(left: 41.h, top: 13.v))])), SizedBox(height: 33.v), CustomImageView(imagePath: ImageConstant.imgAcService5645, height: 192.v, width: 298.h, radius: BorderRadius.circular(33.h), alignment: Alignment.center), SizedBox(height: 12.v), _buildNameSection(context), SizedBox(height: 16.v), _buildRegisterNumberPromptSection(context), SizedBox(height: 61.v), CustomElevatedButton(width: 131.h, text: "lbl_submit".tr, buttonStyle: CustomButtonStyles.fillRed1, onPressed: () {onTapSUBMIT(context);}, alignment: Alignment.center), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgHome, margin: EdgeInsets.only(left: 30.h, top: 45.v, bottom: 32.v)), centerTitle: true, title: AppbarTitle(text: "lbl_indus_motors2".tr, margin: EdgeInsets.only(top: 49.v, bottom: 25.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgEllipse15, margin: EdgeInsets.fromLTRB(19.h, 30.v, 19.h, 31.v))], styleType: Style.bgStyle); } 
/// Section Widget
Widget _buildNameSection(BuildContext context) { return Container(margin: EdgeInsets.only(right: 21.h), padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_car_model".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 23.h), child: BlocSelector<AcserviceBloc, AcserviceState, TextEditingController?>(selector: (state) => state.nameController, builder: (context, nameController) {return CustomTextFormField(controller: nameController, hintText: "msg_enter_your_car_name".tr, alignment: Alignment.centerRight, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}))])); } 
/// Section Widget
Widget _buildRegisterNumberPromptSection(BuildContext context) { return Container(margin: EdgeInsets.only(right: 21.h), padding: EdgeInsets.symmetric(horizontal: 25.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 41.h), child: Text("lbl_register_no".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 23.h), child: BlocSelector<AcserviceBloc, AcserviceState, TextEditingController?>(selector: (state) => state.registerNumberPromptController, builder: (context, registerNumberPromptController) {return CustomTextFormField(controller: registerNumberPromptController, hintText: "msg_enter_your_register".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, alignment: Alignment.centerRight, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});}))])); } 
/// Navigates to the submittedsuccessfullyScreen when the action is triggered.
onTapSUBMIT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.submittedsuccessfullyScreen, ); } 
 }
