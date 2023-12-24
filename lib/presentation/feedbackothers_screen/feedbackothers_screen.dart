import 'bloc/feedbackothers_bloc.dart';import 'models/feedbackothers_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:indus_motors/widgets/app_bar/custom_app_bar.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';import 'package:indus_motors/widgets/custom_text_form_field.dart';class FeedbackothersScreen extends StatelessWidget {const FeedbackothersScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FeedbackothersBloc>(create: (context) => FeedbackothersBloc(FeedbackothersState(feedbackothersModelObj: FeedbackothersModel()))..add(FeedbackothersInitialEvent()), child: FeedbackothersScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 20.v), child: Column(children: [Text("lbl_write_feedback".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 47.v), Align(alignment: Alignment.centerLeft, child: Container(height: 1.adaptSize, width: 1.adaptSize, decoration: BoxDecoration(color: appTheme.blueGray100))), SizedBox(height: 7.v), _buildWriteFeedbackValue(context), SizedBox(height: 65.v), _buildSuggestion(context), Spacer(), SizedBox(height: 83.v), _buildSendFeedbackButton(context)])), bottomNavigationBar: _buildNinetyTwoRow(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 56.v, leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgGoBack21, margin: EdgeInsets.fromLTRB(19.h, 12.v, 310.h, 12.v))); } 
/// Section Widget
Widget _buildWriteFeedbackValue(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 34.h, right: 27.h), child: BlocSelector<FeedbackothersBloc, FeedbackothersState, TextEditingController?>(selector: (state) => state.writeFeedbackValueController, builder: (context, writeFeedbackValueController) {return CustomTextFormField(controller: writeFeedbackValueController, hintText: "msg_write_feedback_here".tr, hintStyle: CustomTextStyles.bodyMediumBlack900, textInputAction: TextInputAction.done, maxLines: 10, contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 19.v), borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray300);})); } 
/// Section Widget
Widget _buildSuggestionButton(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 135.h, text: "lbl_suggestion".tr, margin: EdgeInsets.only(top: 2.v), buttonStyle: CustomButtonStyles.fillBlueGrayTL21, buttonTextStyle: CustomTextStyles.titleSmallOnPrimary, onPressed: () {onTapSuggestionButton(context);}); } 
/// Section Widget
Widget _buildOtherButton(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 135.h, text: "lbl_other".tr, margin: EdgeInsets.only(left: 29.h), buttonStyle: CustomButtonStyles.fillRedTL21); } 
/// Section Widget
Widget _buildSuggestion(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 34.h, right: 27.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSuggestionButton(context), _buildOtherButton(context)])); } 
/// Section Widget
Widget _buildSendFeedbackButton(BuildContext context) { return CustomElevatedButton(height: 46.v, text: "lbl_send_feedback".tr, margin: EdgeInsets.only(left: 17.h, right: 16.h), buttonStyle: CustomButtonStyles.fillRedTL7, buttonTextStyle: CustomTextStyles.titleLargeWhiteA700, onPressed: () {onTapSendFeedbackButton(context);}); } 
/// Section Widget
Widget _buildNinetyTwoRow(BuildContext context) { return Container(margin: EdgeInsets.only(left: 39.h, right: 22.h, bottom: 39.v), decoration: AppDecoration.fillRed, child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Text("lbl_home".tr, style: CustomTextStyles.bodyLargeWhiteA700), Spacer(flex: 56), Text("lbl_feedback".tr, style: CustomTextStyles.bodyLargeRegular), Spacer(flex: 43), GestureDetector(onTap: () {onTapTxtSERVICES(context);}, child: Text("lbl_services".tr, style: CustomTextStyles.bodyLargeRegular))])); } 
/// Navigates to the feedbacksuggestionScreen when the action is triggered.
onTapSuggestionButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.feedbacksuggestionScreen, ); } 
/// Navigates to the submittedsuccessfullyScreen when the action is triggered.
onTapSendFeedbackButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.submittedsuccessfullyScreen, ); } 
/// Navigates to the servicesScreen when the action is triggered.
onTapTxtSERVICES(BuildContext context) { NavigatorService.pushNamed(AppRoutes.servicesScreen, ); } 
 }
