import 'bloc/feedbacksuggestion_bloc.dart';import 'models/feedbacksuggestion_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:indus_motors/widgets/app_bar/custom_app_bar.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';import 'package:indus_motors/widgets/custom_text_form_field.dart';class FeedbacksuggestionScreen extends StatelessWidget {const FeedbacksuggestionScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FeedbacksuggestionBloc>(create: (context) => FeedbacksuggestionBloc(FeedbacksuggestionState(feedbacksuggestionModelObj: FeedbacksuggestionModel()))..add(FeedbacksuggestionInitialEvent()), child: FeedbacksuggestionScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 19.v), child: Column(children: [Text("lbl_write_feedback".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 48.v), Align(alignment: Alignment.centerLeft, child: Container(height: 1.adaptSize, width: 1.adaptSize, decoration: BoxDecoration(color: appTheme.blueGray100))), SizedBox(height: 7.v), _buildWriteFeedbackValue(context), SizedBox(height: 66.v), _buildSuggestionRow(context), Spacer(), SizedBox(height: 84.v), _buildSendFeedbackButton(context)])), bottomNavigationBar: _buildTwoRow(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 56.v, leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgGoBack21, margin: EdgeInsets.fromLTRB(19.h, 12.v, 310.h, 12.v))); } 
/// Section Widget
Widget _buildWriteFeedbackValue(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 34.h, right: 27.h), child: BlocSelector<FeedbacksuggestionBloc, FeedbacksuggestionState, TextEditingController?>(selector: (state) => state.writeFeedbackValueController, builder: (context, writeFeedbackValueController) {return CustomTextFormField(controller: writeFeedbackValueController, hintText: "msg_write_feedback_here".tr, hintStyle: CustomTextStyles.bodyMediumBlack900, textInputAction: TextInputAction.done, maxLines: 10, contentPadding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 16.v), borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray300);})); } 
/// Section Widget
Widget _buildSuggestionButton(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 135.h, text: "lbl_suggestion".tr, buttonStyle: CustomButtonStyles.fillRedTL21); } 
/// Section Widget
Widget _buildOtherButton(BuildContext context) { return CustomElevatedButton(height: 42.v, width: 135.h, text: "lbl_other".tr, margin: EdgeInsets.only(left: 25.h), buttonStyle: CustomButtonStyles.fillBlueGrayTL21, buttonTextStyle: CustomTextStyles.titleSmallBlack900, onPressed: () {onTapOtherButton(context);}); } 
/// Section Widget
Widget _buildSuggestionRow(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 34.h, right: 31.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildSuggestionButton(context), _buildOtherButton(context)])); } 
/// Section Widget
Widget _buildSendFeedbackButton(BuildContext context) { return CustomElevatedButton(height: 46.v, text: "lbl_send_feedback".tr, margin: EdgeInsets.only(left: 20.h, right: 13.h), buttonStyle: CustomButtonStyles.fillRedTL7, buttonTextStyle: CustomTextStyles.titleLargeWhiteA700, onPressed: () {onTapSendFeedbackButton(context);}); } 
/// Section Widget
Widget _buildTwoRow(BuildContext context) { return Container(margin: EdgeInsets.only(left: 40.h, right: 21.h, bottom: 39.v), decoration: AppDecoration.fillRed, child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Text("lbl_home".tr, style: CustomTextStyles.bodyLargeWhiteA700), Spacer(flex: 56), Text("lbl_feedback".tr, style: CustomTextStyles.bodyLargeRegular), Spacer(flex: 43), GestureDetector(onTap: () {onTapTxtSERVICES(context);}, child: Text("lbl_services".tr, style: CustomTextStyles.bodyLargeRegular))])); } 
/// Navigates to the feedbackothersScreen when the action is triggered.
onTapOtherButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.feedbackothersScreen, ); } 
/// Navigates to the submittedsuccessfullyScreen when the action is triggered.
onTapSendFeedbackButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.submittedsuccessfullyScreen, ); } 
/// Navigates to the servicesScreen when the action is triggered.
onTapTxtSERVICES(BuildContext context) { NavigatorService.pushNamed(AppRoutes.servicesScreen, ); } 
 }
