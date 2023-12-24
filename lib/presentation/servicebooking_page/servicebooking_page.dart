import 'bloc/servicebooking_bloc.dart';import 'models/servicebooking_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/core/utils/validation_functions.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';import 'package:indus_motors/widgets/custom_text_form_field.dart';class ServicebookingPage extends StatefulWidget {const ServicebookingPage({Key? key}) : super(key: key);

@override ServicebookingPageState createState() =>  ServicebookingPageState();

static Widget builder(BuildContext context) { return BlocProvider<ServicebookingBloc>(create: (context) => ServicebookingBloc(ServicebookingState(servicebookingModelObj: ServicebookingModel()))..add(ServicebookingInitialEvent()), child: ServicebookingPage()); } 
 }

// ignore_for_file: must_be_immutable
class ServicebookingPageState extends State<ServicebookingPage> with  AutomaticKeepAliveClientMixin<ServicebookingPage> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 25.v), Column(children: [Text("lbl_service_booking".tr, style: CustomTextStyles.titleLargeBlack900), SizedBox(height: 20.v), SizedBox(width: 217.h, child: Text("msg_loooking_for_an".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumRegular15)), SizedBox(height: 56.v), _buildServiceBookingText(context), SizedBox(height: 23.v), _buildMobileNumberText(context), SizedBox(height: 19.v), _buildRegisterNumberText(context), SizedBox(height: 27.v), _buildChooseYourDistrictText(context), SizedBox(height: 37.v), _buildNextStepButton(context), SizedBox(height: 122.v), _buildNinetyEight(context)])]))))); } 
/// Section Widget
Widget _buildServiceBookingText(BuildContext context) { return BlocSelector<ServicebookingBloc, ServicebookingState, TextEditingController?>(selector: (state) => state.serviceBookingTextController, builder: (context, serviceBookingTextController) {return CustomTextFormField(width: 251.h, controller: serviceBookingTextController, hintText: "lbl_name".tr, hintStyle: CustomTextStyles.bodySmallBlack900, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillBlueGray1);}); } 
/// Section Widget
Widget _buildMobileNumberText(BuildContext context) { return BlocSelector<ServicebookingBloc, ServicebookingState, TextEditingController?>(selector: (state) => state.mobileNumberTextController, builder: (context, mobileNumberTextController) {return CustomTextFormField(width: 251.h, controller: mobileNumberTextController, hintText: "lbl_mobile_number".tr, hintStyle: CustomTextStyles.bodySmallBlack900, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillBlueGray1);}); } 
/// Section Widget
Widget _buildRegisterNumberText(BuildContext context) { return BlocSelector<ServicebookingBloc, ServicebookingState, TextEditingController?>(selector: (state) => state.registerNumberTextController, builder: (context, registerNumberTextController) {return CustomTextFormField(width: 251.h, controller: registerNumberTextController, hintText: "lbl_register_number".tr, hintStyle: CustomTextStyles.bodySmallBlack900, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}, borderDecoration: TextFormFieldStyleHelper.fillBlueGray1);}); } 
/// Section Widget
Widget _buildChooseYourDistrictText(BuildContext context) { return BlocSelector<ServicebookingBloc, ServicebookingState, TextEditingController?>(selector: (state) => state.chooseYourDistrictTextController, builder: (context, chooseYourDistrictTextController) {return CustomTextFormField(width: 251.h, controller: chooseYourDistrictTextController, hintText: "msg_choose_your_district".tr, hintStyle: CustomTextStyles.bodySmallBlack900, textInputAction: TextInputAction.done, borderDecoration: TextFormFieldStyleHelper.fillBlueGray1);}); } 
/// Section Widget
Widget _buildNextStepButton(BuildContext context) { return CustomElevatedButton(height: 34.v, width: 180.h, text: "lbl_next_step".tr, rightIcon: Container(margin: EdgeInsets.only(left: 29.h), child: CustomImageView(imagePath: ImageConstant.imgIcons8back642, height: 15.adaptSize, width: 15.adaptSize)), buttonStyle: CustomButtonStyles.fillRed1, buttonTextStyle: CustomTextStyles.labelLargeWhiteA700, onPressed: () {onTapNextStepButton(context);}); } 
/// Section Widget
Widget _buildNinetyEight(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 39.v), decoration: AppDecoration.fillRed, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 17.h), child: Text("lbl_home".tr, style: CustomTextStyles.bodyLargeWhiteA700)), Spacer(flex: 56), GestureDetector(onTap: () {onTapTxtFEEDBACK(context);}, child: Text("lbl_feedback".tr, style: CustomTextStyles.bodyLargeRegular)), Spacer(flex: 43), GestureDetector(onTap: () {onTapTxtSERVICES(context);}, child: Text("lbl_services".tr, style: CustomTextStyles.bodyLargeRegular))])); } 
/// Navigates to the servicesScreen when the action is triggered.
onTapNextStepButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.servicesScreen, ); } 
/// Navigates to the feedbacksuggestionScreen when the action is triggered.
onTapTxtFEEDBACK(BuildContext context) { NavigatorService.pushNamed(AppRoutes.feedbacksuggestionScreen, ); } 
/// Navigates to the servicesScreen when the action is triggered.
onTapTxtSERVICES(BuildContext context) { NavigatorService.pushNamed(AppRoutes.servicesScreen, ); } 
 }
