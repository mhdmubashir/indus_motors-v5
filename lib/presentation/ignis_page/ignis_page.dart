import 'bloc/ignis_bloc.dart';import 'models/ignis_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';class IgnisPage extends StatefulWidget {const IgnisPage({Key? key}) : super(key: key);

@override IgnisPageState createState() =>  IgnisPageState();

static Widget builder(BuildContext context) { return BlocProvider<IgnisBloc>(create: (context) => IgnisBloc(IgnisState(ignisModelObj: IgnisModel()))..add(IgnisInitialEvent()), child: IgnisPage()); } 
 }
class IgnisPageState extends State<IgnisPage> with  AutomaticKeepAliveClientMixin<IgnisPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return BlocBuilder<IgnisBloc, IgnisState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 12.v), Column(children: [CustomElevatedButton(height: 25.v, width: 71.h, text: "lbl_back".tr, margin: EdgeInsets.only(left: 28.h), buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700Regular, alignment: Alignment.centerLeft), SizedBox(height: 20.v), Container(width: 315.h, margin: EdgeInsets.symmetric(horizontal: 22.h), padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 5.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder25), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 78.h), child: Text("lbl_ignis".tr, style: CustomTextStyles.headlineLargeBlack900)), SizedBox(height: 43.v), CustomImageView(imagePath: ImageConstant.imgRectangle122, height: 101.v, width: 170.h, radius: BorderRadius.circular(11.h), margin: EdgeInsets.only(left: 36.h)), SizedBox(height: 72.v), Padding(padding: EdgeInsets.only(right: 47.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_ignis_1_2_sigma".tr, style: CustomTextStyles.titleLargeBlack900)), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("msg_price_range_starts".tr, style: CustomTextStyles.bodyMediumLight15)), SizedBox(height: 10.v), Text("lbl_5_84_lac".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 49.v), CustomElevatedButton(height: 30.v, width: 137.h, text: "lbl_car_enquiry".tr, margin: EdgeInsets.only(right: 10.h), buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700Regular_1, alignment: Alignment.centerRight)])), SizedBox(height: 6.v)])), SizedBox(height: 49.v), _buildRowSection(context)])]))));}); } 
/// Section Widget
Widget _buildRowSection(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 39.v), decoration: AppDecoration.fillRed, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(left: 17.h), child: Text("lbl_home".tr, style: CustomTextStyles.bodyLargeWhiteA700)), Spacer(flex: 56), GestureDetector(onTap: () {onTapTxtFEEDBACK(context);}, child: Text("lbl_feedback".tr, style: CustomTextStyles.bodyLargeRegular)), Spacer(flex: 43), GestureDetector(onTap: () {onTapTxtSERVICES(context);}, child: Text("lbl_services".tr, style: CustomTextStyles.bodyLargeRegular))])); } 
/// Navigates to the feedbacksuggestionScreen when the action is triggered.
onTapTxtFEEDBACK(BuildContext context) { NavigatorService.pushNamed(AppRoutes.feedbacksuggestionScreen, ); } 
/// Navigates to the servicesScreen when the action is triggered.
onTapTxtSERVICES(BuildContext context) { NavigatorService.pushNamed(AppRoutes.servicesScreen, ); } 
 }