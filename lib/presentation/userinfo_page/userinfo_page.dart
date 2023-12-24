import 'bloc/userinfo_bloc.dart';import 'models/userinfo_model.dart';import 'package:flutter/material.dart';import 'package:indus_motors/core/app_export.dart';import 'package:indus_motors/widgets/custom_elevated_button.dart';class UserinfoPage extends StatefulWidget {const UserinfoPage({Key? key}) : super(key: key);

@override UserinfoPageState createState() =>  UserinfoPageState();

static Widget builder(BuildContext context) { return BlocProvider<UserinfoBloc>(create: (context) => UserinfoBloc(UserinfoState(userinfoModelObj: UserinfoModel()))..add(UserinfoInitialEvent()), child: UserinfoPage()); } 
 }
class UserinfoPageState extends State<UserinfoPage> with  AutomaticKeepAliveClientMixin<UserinfoPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return BlocBuilder<UserinfoBloc, UserinfoState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 24.v), Expanded(child: Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(left: 44.h, right: 17.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomElevatedButton(height: 14.v, width: 46.h, text: "lbl_logout".tr, buttonStyle: CustomButtonStyles.fillRedTL7, buttonTextStyle: CustomTextStyles.bodySmallWhiteA700, onPressed: () {onTapLOGOUT(context);}), SizedBox(height: 19.v), CustomImageView(imagePath: ImageConstant.imgIcons8User301, height: 51.adaptSize, width: 51.adaptSize, margin: EdgeInsets.only(left: 119.h)), SizedBox(height: 53.v), Align(alignment: Alignment.center, child: Container(height: 35.v, width: 211.h, decoration: BoxDecoration(color: appTheme.gray30002, borderRadius: BorderRadius.circular(17.h)))), Spacer(), Align(alignment: Alignment.centerRight, child: Text("lbl_notification".tr, style: CustomTextStyles.bodyMediumWhiteA700Light13))]))))]))));}); } 
/// Navigates to the signinScreen when the action is triggered.
onTapLOGOUT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signinScreen, ); } 
 }
