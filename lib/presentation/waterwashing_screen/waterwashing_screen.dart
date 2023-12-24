import 'bloc/waterwashing_bloc.dart';import 'models/waterwashing_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/core/utils/validation_functions.dart';import 'package:indus_motors/widgets/app_bar/appbar_leading_image.dart';import 'package:indus_motors/widgets/app_bar/appbar_title.dart';import 'package:indus_motors/widgets/app_bar/appbar_trailing_image.dart';import 'package:indus_motors/widgets/app_bar/custom_app_bar.dart';import 'package:indus_motors/widgets/custom_drop_down.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';import 'package:indus_motors/widgets/custom_icon_button.dart';import 'package:indus_motors/widgets/custom_outlined_button.dart';import 'package:indus_motors/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class WaterwashingScreen extends StatelessWidget {WaterwashingScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<WaterwashingBloc>(create: (context) => WaterwashingBloc(WaterwashingState(waterwashingModelObj: WaterwashingModel()))..add(WaterwashingInitialEvent()), child: WaterwashingScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 16.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 91.h), child: Row(children: [CustomIconButton(height: 42.adaptSize, width: 42.adaptSize, onTap: () {onTapBtnIconsBackButtonThirty(context);}, child: CustomImageView(imagePath: ImageConstant.imgIcons8BackButton30)), CustomOutlinedButton(width: 161.h, text: "lbl_water_washing2".tr, margin: EdgeInsets.only(left: 48.h, top: 4.v))])), SizedBox(height: 35.v), CustomImageView(imagePath: ImageConstant.imgDepositphotos1, height: 190.v, width: 285.h, radius: BorderRadius.circular(51.h), alignment: Alignment.center), SizedBox(height: 28.v), _buildNameColumn(context), SizedBox(height: 16.v), _buildRegisterNoPromptColumn(context), SizedBox(height: 16.v), _buildTypeOfServiceColumn(context), SizedBox(height: 25.v), CustomElevatedButton(width: 131.h, text: "lbl_submit".tr, margin: EdgeInsets.only(right: 91.h), buttonStyle: CustomButtonStyles.fillRed1, onPressed: () {onTapSUBMIT(context);}, alignment: Alignment.centerRight), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 56.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgHome, margin: EdgeInsets.only(left: 30.h, top: 45.v, bottom: 32.v)), centerTitle: true, title: AppbarTitle(text: "lbl_indus_motors2".tr, margin: EdgeInsets.only(top: 49.v, bottom: 25.v)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgEllipse15, margin: EdgeInsets.fromLTRB(19.h, 30.v, 19.h, 31.v))], styleType: Style.bgStyle_6); } 
/// Section Widget
Widget _buildNameColumn(BuildContext context) { return Container(margin: EdgeInsets.only(right: 29.h), padding: EdgeInsets.symmetric(horizontal: 18.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 47.h), child: Text("lbl_car_model".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 29.h), child: BlocSelector<WaterwashingBloc, WaterwashingState, TextEditingController?>(selector: (state) => state.nameController, builder: (context, nameController) {return CustomTextFormField(controller: nameController, hintText: "msg_enter_your_car_name".tr, alignment: Alignment.centerRight, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}))])); } 
/// Section Widget
Widget _buildRegisterNoPromptColumn(BuildContext context) { return Container(margin: EdgeInsets.only(right: 29.h), padding: EdgeInsets.symmetric(horizontal: 18.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 47.h), child: Text("lbl_register_no".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 29.h), child: BlocSelector<WaterwashingBloc, WaterwashingState, TextEditingController?>(selector: (state) => state.registerNoPromptController, builder: (context, registerNoPromptController) {return CustomTextFormField(controller: registerNoPromptController, hintText: "msg_enter_your_register".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, alignment: Alignment.centerRight, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});}))])); } 
/// Section Widget
Widget _buildTypeOfServiceColumn(BuildContext context) { return Container(margin: EdgeInsets.only(right: 29.h), padding: EdgeInsets.symmetric(horizontal: 18.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 50.h), child: Text("lbl_type_of_service".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 29.h), child: BlocSelector<WaterwashingBloc, WaterwashingState, WaterwashingModel?>(selector: (state) => state.waterwashingModelObj, builder: (context, waterwashingModelObj) {return CustomDropDown(hintText: "lbl_select".tr, alignment: Alignment.centerRight, items: waterwashingModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<WaterwashingBloc>().add(ChangeDropDownEvent(value: value));});}))])); } 
/// Navigates to the servicesScreen when the action is triggered.
onTapBtnIconsBackButtonThirty(BuildContext context) { NavigatorService.pushNamed(AppRoutes.servicesScreen, ); } 
/// Navigates to the submittedsuccessfullyScreen when the action is triggered.
onTapSUBMIT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.submittedsuccessfullyScreen, ); } 
 }
